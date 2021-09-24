# MCD-CORP-NONPROD-01
# 2b8dbbd2-999e-49f3-bb5e-f307d7658ac6

rg_data = {
    "0" = {
        resource_group_name     = "RG-LNXUAT-702"
    }
}


vm_data = {
    "0" = {
        rg_name = "RG-LNXUAT-702"
        nic_name = "VM-LNXUAT-223-nic"
        ip_configuration_name = "internal"
        private_ip_allocation_type = "Dynamic"
        vm_availabilitysetname = "test-01"
        vm_name = "VM-LNXUAT-223"
        vm_size = "Standard_D2_v4"
        vm_storage_disk_caching = "ReadWrite"
        # vm_storage_account_type = "Standard_LRS"
        storage_disk_create_option = "FromImage"
        vm_admin_name = "VM-LNXUAT-703"
        ad_zone = "Infosys"
        ad_ou = "corp.pri/Global Vendors/Infosys/INFY-Computers"
        storage_accountname = "mcdmacfeeinstaller"
        storage_container = "centrify"
        storage_blobname = "Centrify-Infrastructure-Services-18.11-agents-DM.zip"
        vm_tags_DomainSuffix="corp.pri"

        datadisk = {
#             "0" = {
#                 external_disk_name = "az-disk-0"
#                 external_disk_create_option = "Empty"
#                 external_storage_account_type = "Standard_LRS"
#                 external_disk_size = 10
#                 lun = 10
#                 external_disk_caching = "ReadWrite"
#             },
#             "1" = {
#                 external_disk_name = "az-disk-1"
#                 external_disk_create_option = "Empty"
#                 external_storage_account_type = "Standard_LRS"
#                 external_disk_size = 20
#                 lun = 1
#                 external_disk_caching = "ReadWrite"
#             },
            # "2" = {
            #     external_disk_name = "az-terraform-disk-02"
            #     external_disk_create_option = "Empty"
            #     external_storage_account_type = "Standard_LRS"
            #     external_disk_size = 20
            #     lun = 2
            #     external_disk_caching = "ReadWrite"
            # }
        }

        nsg_name = "VM-LNXUAT-223-nsg"
        nsg_rulename = "VM-LNXUAT-223-nsg-rule"
    },
#     "1" = {
#         rg_name = "RG-LNXUAT-202"

#         nic_name = "VM-LNXUAT-224-nic"
#         ip_configuration_name = "internal"
#         private_ip_allocation_type = "Dynamic"
#         vm_availabilitysetname = "test-02"
#         vm_name = "VM-LNXUAT-224"
#         vm_size = "Standard_D2_v4"
#         vm_storage_disk_caching = "ReadWrite"
#         # vm_storage_account_type = "Standard_LRS"
#         storage_disk_create_option = "FromImage"
# #         disk_type = "Standard_LRS"
#         #publisher = "RedHat"
#         #offer = "RHEL"
#         #sku = "7-RAW"
#         #image_version = "latest"
#         vm_admin_name = "VM-LNXUAT-224"
#         ad_zone = "Infosys"
#         ad_ou = "corp.pri/Global Vendors/Infosys/INFY-Computers"
#         storage_accountname = "mcdmacfeeinstaller"
#         storage_container = "centrify"
#         storage_blobname = "Centrify-Infrastructure-Services-18.11-agents-DM.zip"
#         vm_tags_DomainSuffix="corp.pri"

#         datadisk = {
#             "0" = {
#                 external_disk_name = "az-disk-11"
#                 external_disk_create_option = "Empty"
#                 external_storage_account_type = "Standard_LRS"
#                 external_disk_size = 10
#                 lun = 10
#                 external_disk_caching = "ReadWrite"
#             },
#             "1" = {
#                 external_disk_name = "az-disk-12"
#                 external_disk_create_option = "Empty"
#                 external_storage_account_type = "Standard_LRS"
#                 external_disk_size = 20
#                 lun = 1
#                 external_disk_caching = "ReadWrite"
#             },
#             # "2" = {
#             #     external_disk_name = "az-terraform-disk-02"
#             #     external_disk_create_option = "Empty"
#             #     external_storage_account_type = "Standard_LRS"
#             #     external_disk_size = 20
#             #     lun = 2
#             #     external_disk_caching = "ReadWrite"
#             # }
#         }

#         nsg_name = "VM-LNXUAT-224-nsg"
#         nsg_rulename = "VM-LNXUAT-224-nsg-rule"
#     }
}

vm_vnet_rgname              = "RG-Network-NonProd"
vm_vnet_name                = "vn-uscn-nonprod-01"
vm_vnet_subnet              = "sn-web-sec-01"
image_name                  = "RHEL-7.8"
image_gallery_name          = "McDSharedImageGallery"
image_resource_group        = "RG-Shared-Image-Gallery"
kvrs                        = "RG-2W-IMAGE-NON-PROD"
kvname                      = "KV-2W-ImgFactory-NonProd"
vm_admin_name = ""

tags = {
    ApplicationID="APP0000339"
    GBL = "195500855370"
    Market = "CORP"
    Owner = "amarjit.singh@us.mcd.com"
    PatchingGroup="NA"
    DomainSuffix="corp.pri"
    IaC = "Terraform"
    Git-Repo = "mcd-demo-lnx-infrastructure-setup"
}
