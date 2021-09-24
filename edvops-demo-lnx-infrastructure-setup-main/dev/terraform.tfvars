rg_data = {
    "az-linux-rg-test" = {
        resource_group_location = "eastasia"
        resource_group_name = "az-linux-rg-test"
    }
}


vm_data = {
    "0" = {
        rg_name = "az-linux-rg-test"

        nic_name = "az-tf-nic"
        location = "eastasia"
        ip_configuration_name = "internal"
        subnet_id = "/subscriptions/b4fd521e-d75a-4391-ad86-25dacc5a816f/resourceGroups/ansible-machine/providers/Microsoft.Network/virtualNetworks/ansible-machine-vnet/subnets/default"
        private_ip_allocation_type = "Dynamic"

        vm_availabilitysetname = "test01"

        vm_name = "az-li-vm-test"
        vm_size = "Standard_D2_v4"
        vm_storage_disk_caching = "ReadWrite"
        vm_storage_account_type = "Standard_LRS"
        disk_type = "Standard_LRS"
        publisher = "RedHat"
        offer = "RHEL"
        sku = "7-RAW"
        image_version = "latest"
        vm_admin_name = "admin123"

        datadisk = {
            "0" = {
                external_disk_name = "az-tf-disk"
                external_disk_create_option = "Empty"
                external_storage_account_type = "Standard_LRS"
                external_disk_size = 10
                lun = 10
                external_disk_caching = "ReadWrite"
            },
            "1" = {
                external_disk_name = "az-tf-disk-01"
                external_disk_create_option = "Empty"
                external_storage_account_type = "Standard_LRS"
                external_disk_size = 20
                lun = 1
                external_disk_caching = "ReadWrite"
            },
            # "2" = {
            #     external_disk_name = "az-terraform-disk-02"
            #     external_disk_create_option = "Empty"
            #     external_storage_account_type = "Standard_LRS"
            #     external_disk_size = 20
            #     lun = 2
            #     external_disk_caching = "ReadWrite"
            # }
        }

        nsg_name = "az-tf-nsg"
        nsg_rulename = "az-tf-nsg-rule"
    },
    "1" = {
        rg_name = "az-linux-rg-test"

        nic_name = "az-tf-nic-1"
        location = "eastasia"
        ip_configuration_name = "internal"
        subnet_id = "/subscriptions/b4fd521e-d75a-4391-ad86-25dacc5a816f/resourceGroups/ansible-machine/providers/Microsoft.Network/virtualNetworks/ansible-machine-vnet/subnets/default"
        private_ip_allocation_type = "Dynamic"

        vm_availabilitysetname = "test02"

        vm_name = "az-li-vm-test-1"
        vm_size = "Standard_D2_v4"
        vm_storage_disk_caching = "ReadWrite"
        vm_storage_account_type = "Standard_LRS"
        disk_type = "Standard_LRS"
        publisher = "RedHat"
        offer = "RHEL"
        sku = "7-RAW"
        image_version = "latest"
        vm_admin_name = "admin123"

        datadisk = {
            "0" = {
                external_disk_name = "az-tf-disk-00"
                external_disk_create_option = "Empty"
                external_storage_account_type = "Standard_LRS"
                external_disk_size = 10
                lun = 10
                external_disk_caching = "ReadWrite"
            },
            "1" = {
                external_disk_name = "az-tf-disk-11"
                external_disk_create_option = "Empty"
                external_storage_account_type = "Standard_LRS"
                external_disk_size = 20
                lun = 1
                external_disk_caching = "ReadWrite"
            },
            # "2" = {
            #     external_disk_name = "az-terraform-disk1-02"
            #     external_disk_create_option = "Empty"
            #     external_storage_account_type = "Standard_LRS"
            #     external_disk_size = 20
            #     lun = 2
            #     external_disk_caching = "ReadWrite"
            # }
        }

        nsg_name = "az-tf-nsg-1"
        nsg_rulename = "az-tf-nsg-rule-1"
    }
}
kvrs="keyVaultCloudeqVMPipeline"
kvname="Linux-VM-vault"
vm_admin_name = "admin123"
Tags = {
    ApplicationID="APP0000339"
    GBL = "195500855370"
    Market = "CORP"
    Owner = "amarjit.singh@us.mcd.com"
    PatchingGroup="NA"
    DomainSuffix="corp.pri"
    TerraformManaged ="True"
}
