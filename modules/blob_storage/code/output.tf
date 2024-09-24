output "storage_account_id" {
    value = azurerm_storage_account.blob_storageaccount.id
}

output "blob_container_ids" {
    value = azurerm_storage_container.blob_container[*].id
}
