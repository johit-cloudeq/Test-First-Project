#!/bin/bash

#cat /tmp/provisioning/region
# if [[ $region == *"us"* ]] || [[ $region == *"US"* ]]
# then
#     proxyIP="http://152.140.216.4:3128"
# elif [[ $region == *"asia"* ]] || [[ $region == *"ASIA"* ]] || [[ $region == *"Asia"* ]]
# then
#     proxyIP="http://152.140.218.4:3128"
# elif [[ $region == *"europe"* ]] || [[ $region == *"EUROPE"* ]] || [[ $region == *"Europe"* ]]
# then
#     proxyIP="http://152.142.150.4:3128"
# else
#     echo "Region not supported"
# fi
# echo "Region $region Selected"

# Create a configuration file and add your license key \
echo "license_key: $key" | sudo tee -a /etc/newrelic-infra.yml && \
\
# Create the agent’s yum repository \
sudo curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/el/7/x86_64/newrelic-infra.repo && \
\
# Update your yum cache \
sudo yum -q makecache -y --disablerepo='*' --enablerepo='newrelic-infra' && \
\
# Run the installation script \
sudo yum install newrelic-infra -y
