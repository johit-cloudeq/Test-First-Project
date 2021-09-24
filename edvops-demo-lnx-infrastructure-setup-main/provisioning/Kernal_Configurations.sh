#!/bin/bash
#Kernel Paremeter : Adding the following settings to /etc/sysctl.conf

# Check if running with root User

clear



if [[ "${UID}" -ne 0 ]]; then
    echo " You need to run this script as root"
    exit 1
fi


echo "*******************************************************"
echo ""
echo "Kernel Paremeter : Adding the following settings to /etc/sysctl.conf"
echo ""
echo "*******************************************************"

echo "net.ipv4.ip_local_port_range = 9000 65500
net.core.rmem_default = 262144
net.core.rmem_max = 4194304
net.core.wmem_default = 262144
net.core.wmem_max = 1048576
kernel.shmmax =21474836480
kernel.shmall = 43296042
kernel.shmmni = 4096
kernel.sem = 250 32000 100 128
fs.file-max = 6815744
fs.aio-max-nr = 1048576" >/etc/sysctl.conf
/usr/sbin/sysctl -p 

yum update -y --disablerepo='*' --enablerepo='*microsoft*'
# Binaries Installation
yum -y install --skip-broken lvm2 makecache binutils-2.23.52.0.1-12.el7.x86_64 compat-libcap1-1.10-3.el7.x86_64   compat-libstdc++-33-3.2.3-71.el7.x86_64  gcc-4.8.2-3.el7.x86_64  gcc-c++-4.8.2-3.el7.x86_64    glibc-2.17-36.el7.x86_64   glibc-devel-2.17-36.el7.x86_64  ksh   elfutils-libelf-devel-0.170-4.el7.x86_64   elfutils-libelf-0.170-4.el7.x86_64  elfutils-0.170-4.el7.x86_64    libaio-0.3.109-9.el7.x86_64   libaio-devel-0.3.109-9.el7.x86_64  libgcc-4.8.2-3.el7.x86_64   libstdc++-4.8.2-3.el7.x86_64   libstdc++-devel-4.8.2-3.el7.x86_64  libXi-1.7.2-1.el7.x86_64  libXtst-1.2.2-1.el7.x86_64  make-3.82-19.el7.x86_64  sysstat-10.1.5-1.el7.x86_64  libatasmart-0.19-6.el7.x86_64  gtk-vnc2-0.5.2-7.el7.x86_64  tigervnc-server-1.3.1-9.el7.x86_64  tigervnc-license-1.3.1-9.el7.noarch  gvnc-0.5.2-7.el7.x86_64  tigervnc-1.3.1-9.el7.x86_64  tigervnc-icons-1.3.1-9.el7.noarch       tigervnc-server-minimal-1.3.1-9.el7.x86_64  telnet
