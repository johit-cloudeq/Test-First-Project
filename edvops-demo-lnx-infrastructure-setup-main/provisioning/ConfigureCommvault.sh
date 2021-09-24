#!/bin/bash

url="https://$storageaccount.blob.core.windows.net/$storagecontainer/$commvault_servicepack_blob$commvault_sas"
wget "$url" -O  /tmp/commvault.rpm
cd /tmp && sudo yum install -y ./commvault.rpm
