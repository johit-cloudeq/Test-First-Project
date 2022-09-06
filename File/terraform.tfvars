vm_data = {
   "0" = {
                    rg_name                       = "RG-GTES-PAM-Prod"
                    ostype                        = "windows"
                    nic_name                      = "zasppamvagtes03-nic"
                    dns_servers                   = null
                    vm_vnet_subnet                = "sn-app-sec-01"
                    vm_vnet_rgname                = "RG-Network-Prod"
                    vm_vnet_name                  = "vn-apse-prod-01"
                    vnet_location                 = "Southeast Asia"
                    private_ip_allocation_type    = "static"
                    private_ip_address            = "152.140.21.50"
                    ip_configuration_name         = "Internal"
                    availability_set_id           = "/subscriptions/345395af-dab3-4547-9ebb-bbb00ceffcac/resourceGroups/RG-GTES-PAM-Prod/providers/Microsoft.Compute/availabilitySets/zasppamvagtes03-as"
                    availability_zones            = null #[0]
                    vm_name                       = "zasppamvagtes03"
                    vm_size                       = "Standard_DS4_v2"
                    disk_type                     = "Premium_LRS"
                    storage_disk_create_option    = "FromImage"
                    storage_disk_caching          = "ReadWrite"
                    os_storage_disk_size          = 300
                    vm_admin_name                 = "pamadmin"
                    enable_accelerated_networking = "false"
                    publisher_name                = "beyondtrust"
                    offer_name                    = "beyondinsight"
                    sku_type                      = "u-series"
                    image_version                 = "latest"
                    plan_name                     = "u-series"
                    plan_publisher                = "beyondtrust"
                    plan_product                  = "beyondinsight"
                    domainjoin                    = null
                    datadisk = {
                                "0" = {
                                        external_disk_name               = "zasppamvagtes03-disk"
                                        external_data_disk_create_option = "Empty"
                                        external_data_disk_type          = "Premium_LRS"
                                        external_data_disk_size          = "1023"
                                        external_data_tier               = null   # "P10"
                                        zones                            = null  #[1]
                                        lun                              = "10"
                                        external_data_disk_caching       = "ReadOnly"
                                },
                     
                            }
                           tags                  = {
                            ApplicationID    = "APP1352768"
                            GBL             = "195500433516"
                            Market          = "CORP"
                            Method          = "GithubPipeline"
                            Owner           = "Jennifer.Slowinski@us.mcd.com"
                            DataClassification = "Business Use"
                            Projectname     = "integration"
                            PatchingGroup   = "Windows Appliance - Application Team Do Patching"
                            VMName             = "zasppamvagtes03"
                        }
           },
            "1" = {
                    rg_name                       = "RG-GTES-PAM-Prod"
                    ostype                        = "windows"
                    nic_name                      = "zasppamvagtes04-nic"
                    dns_servers                   = null
                    vm_vnet_subnet                = "sn-app-sec-01"
                    vm_vnet_rgname                = "RG-Network-Prod"
                    vm_vnet_name                  = "vn-apse-prod-01"
                    vnet_location                 = "Southeast Asia"
                    private_ip_allocation_type    = "static"
                    private_ip_address            = "152.140.21.51"
                    ip_configuration_name         = "Internal"
                    availability_set_id           = "/subscriptions/345395af-dab3-4547-9ebb-bbb00ceffcac/resourceGroups/RG-GTES-PAM-Prod/providers/Microsoft.Compute/availabilitySets/zasppamvagtes04-as"
                    vm_name                       = "zasppamvagtes04"
                    availability_zones            = null #[1]
                    vm_size                       = "Standard_DS4_v2"
                    disk_type                     = "Premium_LRS"
                    storage_disk_create_option    = "FromImage"
                    storage_disk_caching          = "ReadWrite"
                    os_storage_disk_size          = 300
                    vm_admin_name                 = "pamadmin"
                    enable_accelerated_networking = "false"
                    publisher_name                = "beyondtrust"
                    offer_name                    = "beyondinsight"
                    sku_type                      = "u-series"
                    image_version                 = "latest"
                    plan_name                     = "u-series"
                    plan_publisher                = "beyondtrust"
                    plan_product                  = "beyondinsight"
                    domainjoin                    = null
                    datadisk = {
                                "0" = {
                                        external_disk_name               = "zasppamvagtes04-disk1"
                                        external_data_disk_create_option = "Empty"
                                        external_data_disk_type          = "Premium_LRS"
                                        external_data_disk_size          = "1023"
                                        external_data_tier               = null   #"P10"
                                        zones                            = null  #[2]
                                        lun                              = "10"
                                        external_data_disk_caching       = "ReadOnly"
                                },
                     
                            }
                            tags                  = {
                            ApplicationID    = "APP1352768"
                            GBL             = "195500433516"
                            Market          = "CORP"
                            Method          = "GithubPipeline"
                            Owner           = "Jennifer.Slowinski@us.mcd.com"
                            DataClassification = "Business Use"
                            Projectname     = "integration"
                            PatchingGroup   = "Windows Appliance - Application Team Do Patching"
                            VMName             = "zasppamvagtes04"
                        }
           },
            "2" = {
                    rg_name                       = "RG-GTES-PAM-Prod"
                    ostype                        = "windows"
                    nic_name                      = "zewppamvagtes03-nic"
                    dns_servers                   = null
                    vm_vnet_subnet                = "sn-app-sec-01"
                    vm_vnet_rgname                = "RG-Network-Prod"
                    vm_vnet_name                  = "vn-euwe-prod-01"
                    vnet_location                 = "West Europe"
                    private_ip_allocation_type    = "static"
                    private_ip_address            = "152.142.138.203"
                    ip_configuration_name         = "Internal"
                    availability_set_id           = "/subscriptions/345395af-dab3-4547-9ebb-bbb00ceffcac/resourceGroups/RG-GTES-PAM-Prod/providers/Microsoft.Compute/availabilitySets/zewppamvagtes03-as"
                    availability_zones            = null #[0]
                    vm_name                       = "zewppamvagtes03"
                    vm_size                       = "Standard_DS4_v2"
                    disk_type                     = "Premium_LRS"
                    storage_disk_create_option    = "FromImage"
                    storage_disk_caching          = "ReadWrite"
                    os_storage_disk_size          = 300
                    vm_admin_name                 = "pamadmin"
                    enable_accelerated_networking = "false"
                    publisher_name                = "beyondtrust"
                    offer_name                    = "beyondinsight"
                    sku_type                      = "u-series"
                    image_version                 = "latest"
                    plan_name                     = "u-series"
                    plan_publisher                = "beyondtrust"
                    plan_product                  = "beyondinsight"
                    domainjoin                    = null
                    datadisk = {
                                "0" = {
                                        external_disk_name               = "zewppamvagtes03-disk"
                                        external_data_disk_create_option = "Empty"
                                        external_data_disk_type          = "Premium_LRS"
                                        external_data_disk_size          = "1023"
                                        external_data_tier               = null   # "P10"
                                        zones                            = null  #[1]
                                        lun                              = "10"
                                        external_data_disk_caching       = "ReadOnly"
                                },
                            }
             tags                  = {
                            ApplicationID    = "APP1352768"
                            GBL             = "195500433516"
                            Market          = "CORP"
                            Method          = "GithubPipeline"
                            Owner           = "Jennifer.Slowinski@us.mcd.com"
                            DataClassification = "Business Use"
                            Projectname     = "integration"
                            PatchingGroup   = "Windows Appliance - Application Team Do Patching"
                            VMName             = "zewppamvagtes03"
                        }
           },
            "3" = {
                    rg_name                       = "RG-GTES-PAM-Prod"
                    ostype                        = "windows"
                    nic_name                      = "zewppamvagtes04-nic"
                    dns_servers                   = null
                    vm_vnet_subnet                = "sn-app-sec-01"
                    vm_vnet_rgname                = "RG-Network-Prod"
                    vm_vnet_name                  = "vn-euwe-prod-01"
                    vnet_location                 = "West Europe"
                    private_ip_allocation_type    = "static"
                    private_ip_address            = "152.142.138.204"
                    ip_configuration_name         = "Internal"
                    availability_set_id           = "/subscriptions/345395af-dab3-4547-9ebb-bbb00ceffcac/resourceGroups/RG-GTES-PAM-Prod/providers/Microsoft.Compute/availabilitySets/zewppamvagtes04-as"
                    vm_name                       = "zewppamvagtes04"
                    availability_zones            = null #[1]
                    vm_size                       = "Standard_DS4_v2"
                    disk_type                     = "Premium_LRS"
                    storage_disk_create_option    = "FromImage"
                    storage_disk_caching          = "ReadWrite"
                    os_storage_disk_size          = 300
                    vm_admin_name                 = "pamadmin"
                    enable_accelerated_networking = "false"
                    publisher_name                = "beyondtrust"
                    offer_name                    = "beyondinsight"
                    sku_type                      = "u-series"
                    image_version                 = "latest"
                    plan_name                     = "u-series"
                    plan_publisher                = "beyondtrust"
                    plan_product                  = "beyondinsight"
                    domainjoin                    = null
                    datadisk = {
                                "0" = {
                                        external_disk_name               = "zewppamvagtes04-disk1"
                                        external_data_disk_create_option = "Empty"
                                        external_data_disk_type          = "Premium_LRS"
                                        external_data_disk_size          = "1023"
                                        external_data_tier               = null   #"P10"
                                        zones                            = null  #[2]
                                        lun                              = "10"
                                        external_data_disk_caching       = "ReadOnly"
                                },
                     
                            }
                            tags                  = {
                            ApplicationID    = "APP1352768"
                            GBL             = "195500433516"
                            Market          = "CORP"
                            Method          = "GithubPipeline"
                            Owner           = "Jennifer.Slowinski@us.mcd.com"
                            DataClassification = "Business Use"
                            Projectname     = "integration"
                            PatchingGroup   = "Windows Appliance - Application Team Do Patching"
                            VMName             = "zewppamvagtes04"
                        }
           },


           

      }
