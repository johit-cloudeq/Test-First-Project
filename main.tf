module "resource_group" {
    source = "git::https://github.com/cloudEQ/terraform-azurerm-rg.git"

    for_each = var.rg_data

    resource_group_name = each.value.resource_group_name
    resource_group_location = each.value.resource_group_location
}

module "vm" {
    source = "git::https://github.com/cloudEQ/terraform-azurerm-windowsvm.git"

    for_each = var.vm_data

    nic_name = each.value.nic_name
    location = each.value.location
    resource_group_name = module.resource_group[each.value.rg_name].azure_resource_group_name
    enable_accelerated_networking =each.value.enable_accelerated_networking
    ip_configuration_name = each.value.ip_configuration_name
    subnet_id = each.value.subnet_id
    private_ip_allocation_type = each.value.private_ip_allocation_type
    
    vm_name = each.value.vm_name
    vm_size = each.value.vm_size
    vm_storage_disk_caching = each.value.vm_storage_disk_caching
    vm_storage_account_type = each.value.vm_storage_account_type
    publisher = each.value.publisher
    offer = each.value.offer
    sku = each.value.sku
    image_version = each.value.image_version
    automatic_updates = each.value.automatic_updates
    vm_admin_name = each.value.vm_admin_name
    vm_admin_password = each.value.vm_admin_password

    datadisk = each.value.datadisk

    # external_disk_name = each.value.external_disk_name
    # external_disk_create_option = each.value.external_disk_create_option
    # external_storage_account_type = each.value.external_storage_account_type
    # external_disk_size = each.value.external_disk_size
    # lun = each.value.lun
    # external_disk_caching = each.value.external_disk_caching

    nsg_name = each.value.nsg_name
}
