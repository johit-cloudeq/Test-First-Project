# McDonalds Corp - Sandbox (Infosys)
# 1ff52360-ccb7-42c0-8a63-e4424d746eac

rg_data = {
            "0" = {
                    resource_group_name     = "AZURE-QA-RG02"
                     resource_group_location = "eastus"
            },
}

vm_data = {
            "0" = {
                rg_name                       = "AZURE-QA-RG02"
                nic_name                      = "CEQLNXQA01-nic"
                enable_accelerated_networking = "false"
                ip_configuration_name         = "internal"
                private_ip_allocation_type    = "Dynamic"
                vm_availabilitysetname        = "CEQLNXQA01-01"
                nsg_name                      = "CEQLNXQA01-nsg"
                vm_name                       = "CEQLNXQA01"
                vm_size                       = "Standard_D2_v4"
                vm_storage_disk_caching       = "ReadWrite"
                storage_disk_create_option    = "FromImage"
                vm_admin_name                 = "CEQLNXQA01"
                ad_zone                       = "Infosys"
                ad_ou                         = "corp.pri/Global Vendors/Infosys/INFY-Computers"
                vm_tags_DomainSuffix          = "corp.pri"
                vm_vnet_rgname                = "rg-us-east-sb"
                vm_vnet_name                  = "vnet-us-east-sb-main"
                vm_vnet_subnet                = "sn-us-east-sb-main"
                image_name                    = "RHEL-7.8"
                image_gallery_name            = "sigLinux"
                image_resource_group          = "rg-aib-devops-us-east-linux-sig"
                datadisk = {
                            "0" = {
                                    external_disk_name              = "CEQLNXQA01-disk"
                                    external_disk_create_option     = "Empty"
                                    external_storage_account_type   = "Standard_LRS"
                                    external_disk_size              = 10
                                    lun                             = 10
                                    external_disk_caching           = "ReadWrite"
                            },
                            "1" = {
                                    external_disk_name              = "CEQLNXQA01-disk-1"
                                    external_disk_create_option     = "Empty"
                                    external_storage_account_type   = "Standard_LRS"
                                    external_disk_size              = 20
                                    lun                             = 1
                                    external_disk_caching           = "ReadWrite"
                            },
                            }
                    },

        }

# Sandbox vars
kvrs                    = "RG-2W-IMAGE-FACTORY"
kvname                  = "KV-2W-ImgFactory-Sandbox"
storage_container       = "centrify"
storage_blobname        = "Centrify-Infrastructure-Services-18.11-agents-DM.zip"

tags = {
    ApplicationID = "APP0000339"
    GBL           = "195500855370"
    Market        = "CORP"
    Owner         = "amarjit.singh@us.mcd.com"
    PatchingGroup = "NA"
    DomainSuffix  = "corp.pri"
    IaC           = "Terraform"
    Git-Repo      = "mcd-demo-lnx-infrastructure-setup"
}
