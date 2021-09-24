module "resource_group" {
    source                  = "git::https://github.com/mcdonalds-corp/terraform-azurerm-rg.git?ref=v1.0.0"
    for_each                = var.rg_data
    resource_group_name     = each.value.resource_group_name
    resource_group_location = each.value.resource_group_location
    tags                     = var.tags
}

data "azurerm_key_vault" "main" {
   name                = var.kvname
   resource_group_name = var.kvrs
}

data "azurerm_key_vault_secret" "vm_pwd" {
  name         = "vm-admin-pwd"
  key_vault_id = data.azurerm_key_vault.main.id
}
data "azurerm_key_vault_secret" "storageAccountName" {
  name         = "storageAccountName"
  key_vault_id = data.azurerm_key_vault.main.id
}

data "azurerm_key_vault_secret" "storageAccountKey" {
  name         = "storageAccountKey"
  key_vault_id = data.azurerm_key_vault.main.id
}

data "azurerm_key_vault_secret" "ad_user" {
  name         = "dc-sa-name"
  key_vault_id = data.azurerm_key_vault.main.id
}

data "azurerm_key_vault_secret" "dc-sa-password" {
  name         = "dc-sa-password"
  key_vault_id = data.azurerm_key_vault.main.id
}

data "azurerm_virtual_network" "vnet" {
  for_each             = var.vm_data
  name                = each.value.vm_vnet_name
  resource_group_name = each.value.vm_vnet_rgname
}

data "azurerm_subnet" "vnet" {
  for_each             = var.vm_data
  name                 = each.value.vm_vnet_subnet
  virtual_network_name = each.value.vm_vnet_name
  resource_group_name  = each.value.vm_vnet_rgname
}

module "vm" {
    source                     = "git::https://github.com/mcdonalds-corp/terraform-azurem-linuxvm.git"
    for_each                   = var.vm_data
    location                   = data.azurerm_virtual_network.vnet[each.key].location
    resource_group_name        = each.value.rg_name
    nic_name                   = each.value.nic_name
    ip_configuration_name      = each.value.ip_configuration_name
    subnet_id                  = data.azurerm_subnet.vnet[each.key]["id"]
    private_ip_allocation_type = each.value.private_ip_allocation_type
    vm_availabilitysetname     = each.value.vm_availabilitysetname
    vm_name                    = each.value.vm_name
    vm_size                    = each.value.vm_size
    storage_disk_caching       = each.value.vm_storage_disk_caching
    storage_disk_create_option = each.value.storage_disk_create_option
    linux_image_id             = data.azurerm_shared_image.image[each.key]["id"]
    vm_admin_name              = each.value.vm_admin_name
    vm_admin_password          = data.azurerm_key_vault_secret.vm_pwd.value 
    vm_tags_DomainSuffix       = each.value.vm_tags_DomainSuffix
    ad_user                    = data.azurerm_key_vault_secret.ad_user.value
    ad_passwd                  = data.azurerm_key_vault_secret.dc-sa-password.value
    storage_container          = var.storage_container
    storage_blobname           = var.storage_blobname
    ad_zone                    = each.value.ad_zone
    ad_ou                      = each.value.ad_ou
    storageAccountKey          = data.azurerm_key_vault_secret.storageAccountKey.value
    storageAccountName         = data.azurerm_key_vault_secret.storageAccountName.value
    datadisk                   = each.value.datadisk
    nsg_name                   = each.value.nsg_name
    tags                       = var.tags
    depends_on                 = [module.resource_group]
}

data "azurerm_shared_image" "image" {
  for_each            = var.vm_data
  name                = each.value.image_name
  gallery_name        = each.value.image_gallery_name
  resource_group_name = each.value.image_resource_group
}
