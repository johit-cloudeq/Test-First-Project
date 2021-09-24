#!/bin/bash
# RETURNING ADDED HARD DISKS
# 2 functions for as one detects disks for 1 disk & other for multiple
lsblk -r --output NAME,MOUNTPOINT | awk -F / '/sd/ { dsk=substr($1,1,3);dsks[dsk]+=1 } END { 
for ( i in dsks ) {
    if (dsks[i]==1) 
        print i 
}
}
' > output
lsblk --noheadings --raw -o NAME,MOUNTPOINT | awk '$1~/[[:digit:]]/ && $2 == ""' |grep sd |sed '/^sda/d' >> output
count=$( wc -w output | awk '{print $1}')
echo "number of disk $count"
host=$(hostname)
vg_name=$(hostname)
lvm_name="$(hostname)_lvm"
mount_point="lvm_$host"
sudo chmod -R 777 /etc/fstab
diskItemString=$(cat output |tr "\n" " "|tr "1" " ")
diskItemArray=($diskItemString)
echo ${diskItemArray[*]}
add_to_fstab() {
    
    UUID=$(sudo blkid -s UUID -o value /dev/$vg_name/$lvm_name)
    MOUNTPOINT="/$mount_point"
    sudo grep "${UUID}" /etc/fstab >/dev/null 2>&1
    if [ ${?} -eq 0 ];
    then
        echo "Not adding ${UUID} to fstab again (it's already there)"
    else
        LINE="UUID=\"${UUID}\"\t${MOUNTPOINT}\"\t${diskformat}\tnoatime,nodiratime,nodev,noexec,nosuid\t1 2"
        sudo echo -e "${LINE}" >> /etc/fstab
    fi
}

cnt=${#diskItemArray[@]}
for ((i=0;i<cnt;i++)); do
    array[i]="/dev/${diskItemArray[i]}1"
    array=($(echo "${array[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))
    echo "${array[i]}"
done

for diskitem in "${diskItemArray[@]}"
do
    echo $diskitem
    diskpath=/dev/$diskitem
    printf "o\nn\np\n1\n\n\nw\n" | sudo fdisk "/dev/$diskitem"
    sudo pvcreate /dev/$diskitem"1"
    ds=$(fdisk -l |grep Disk |grep $diskitem | cut -d " " -f 3)
    ds=${ds%.*}
    ds="$(($ds-1))"
    unused="$(($ds*8/100))"
    unused=${unused%.*}
    ds="$(($ds-$unused))"
    ds=${ds%.*}
    size=$(($size+$ds))
done

pvlist=$(printf  "${array[*]}")
sudo vgcreate $vg_name $pvlist
sudo lvcreate -n $lvm_name --size $size"G" $vg_name
sudo mkfs.$diskformat /dev/$vg_name/$lvm_name
sudo mkdir /$mount_point 
sudo mount /dev/$vg_name/$lvm_name /$mount_point
add_to_fstab $mount_point $diskformat
sudo chmod -R 744 /etc/fstab
sudo chmod -R 755 /$mount_point