#!/bin/bash
# storageblobname="$1"
# storagecontainer="$3"
# storageaccount="$2"
# token="$4"
# region="$5"
if [[ $region == *"us"* ]] || [[ $region == *"US"* ]]
then
    proxyIP="http://152.140.216.4:3128"
elif [[ $region == *"asia"* ]] || [[ $region == *"ASIA"* ]] || [[ $region == *"Asia"* ]]
then
    proxyIP="http://152.140.218.4:3128"
elif [[ $region == *"europe"* ]] || [[ $region == *"EUROPE"* ]] || [[ $region == *"Europe"* ]]
then
    proxyIP="http://152.142.150.4:3128"
else
    echo "Region not supported"
fi
echo "Region $region Selected"
echo "sas token is $sentinel_sas"
url="https://$storageaccount.blob.core.windows.net/$storagecontainer/$storageblobname$sentinel_sas"
echo " url is $url"
wget "$url" -O  /tmp/sentinel.zip
unzip /tmp/sentinel.zip -d /opt
cd /opt
yum install -y ./SentinelAgent_linux_v21_5_3_2.rpm
/opt/sentinelone/bin/sentinelctl management proxy set $proxyIP
/opt/sentinelone/bin/sentinelctl management token set $token
/opt/sentinelone/bin/sentinelctl control start
