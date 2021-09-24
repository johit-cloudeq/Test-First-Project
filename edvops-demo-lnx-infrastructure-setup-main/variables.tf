variable "rg_data" {
  description = "Data of Resource Group"
  type = map(any)
}

variable "vm_data" {
  description = "Data of Virtual Machine"
  type = map(any)
}

variable "kvrs" {
    description = "RG for Key Vault"
    type = string
}
variable "kvname" {
    description = "Name of Key Vault"
    type = string
}

variable "storage_container" {
    description = "conatainer for centify server package"
    type = string
}
variable "storage_blobname" {
    description = "Blob for centify server package"
    type = string
}
variable "tags" {}
