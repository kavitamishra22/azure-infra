provider "azurerm" {
    features {}
}

locals {
    sanitized_container_names = [
    for name in var.blob_container_names :
    lower(replace(replace(trim(name, "\r"), "[^a-z0-9-]", "-"), "--", "-"))
    ]
}

resource "azurerm_resource_group" "example" {
  name     = "eum-platform"
  location = "central india"
}


resource "azurerm_storage_account" "queue_storageaccount" {
    name                     = var.storage_account_name
    resource_group_name      = var.resource_group_name
    location                 = var.location
    account_tier             = var.account_tier
    account_replication_type = var.account_replication_type
    tags = var.tags
}

resource "azurerm_storage_container" "blob_container" {
    count                 = length(var.blob_container_names)
    name                  = var.blob_container_names[count.index]
    storage_account_name  = azurerm_storage_account.queqe_storageaccount.name
    container_access_type = var.container_access_type
}