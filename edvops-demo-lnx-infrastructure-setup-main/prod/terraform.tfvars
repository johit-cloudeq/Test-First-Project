# MCD-CORP-PROD-01   
# 345395af-dab3-4547-9ebb-bbb00ceffcac

rg_data = {
            "0" = {
                   resource_group_name     = "RG-LNXDEMO-204"
            },
}


vm_data = {
            "0" = {
                    rg_name                    = "RG-LNXDEMO-204"
                    nic_name                   = "VM-LNXDEMO-204-nic"
                    ip_configuration_name      = "internal"
                    private_ip_allocation_type = "Dynamic"
                    vm_availabilitysetname     = "LNXDEMO-204-01"
                    vm_name                    = "VM-LNXDEMO-204"
                    vm_size                    = "Standard_D2_v4"
                    vm_storage_disk_caching    = "ReadWrite"
                    storage_disk_create_option = "FromImage"
                    vm_admin_name              = "VM-LNXDEMO-204"
                    ad_zone                    = "Infosys"
                    ad_ou                      = "corp.pri/Global Vendors/Infosys/INFY-Computers"
                    storage_accountname        = "mcdmacfeeinstaller"
                    storage_container          = "centrify"
                    storage_blobname           = "Centrify-Infrastructure-Services-18.11-agents-DM.zip"
                    vm_tags_DomainSuffix       = "corp.pri"
                    nsg_name                   = "VM-LNXDEMO-204-nsg"
                    nsg_rulename               = "VM-LNXDEMO-204-nsg-rule"
                    datadisk = {
                                "0" = {
                                        external_disk_name            = "LNXDEMO-204-01"
                                        external_disk_create_option   = "Empty"
                                        external_storage_account_type = "Standard_LRS"
                                        external_disk_size            = 20
                                        lun                           = 1
                                        external_disk_caching         = "ReadWrite"
                                },
#                                 "1" = {
#                                         external_disk_name            = "LNXDEMO-202-11"
#                                         external_disk_create_option   = "Empty"
#                                         external_storage_account_type = "Standard_LRS"
#                                         external_disk_size            = 20
#                                         lun                           = 11
#                                         external_disk_caching         = "ReadWrite"
#                                 },
                               }
            },
}           

vm_vnet_rgname           = "RG-Network-Prod"
vm_vnet_name             = "vn-uscn-shared-01"
vm_vnet_subnet           = "sn-restricted-sec-01"
image_name               = "RHEL-7.7"
image_gallery_name       = "McDSharedImageGallery"
image_resource_group     = "RG-Shared-Image-Gallery"
kvrs                     = "RG-2W-IMAGE-PROD"
kvname                   = "KV-2W-ImgFactory-Prod"

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
