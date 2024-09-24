variable "storage_account_name" {
    description = "The name of the Storage Account"
}

variable "resource_group_name" {
    description = "The name of the resource group to create the Storage Account"
}

variable "account_tier" {
    description = "The account tier"
}

variable "location" {
    description = "The location of the Storage Account"
}

variable "tags" {
    description = "A map of tags for the Storage Account"
    type        = map(string)
}

variable "account_replication_type" {
    description = "The Storage Account replication type"
}

variable "blob_container_names" {
    description = "The list of blob containers"
    type = list(string)
}

variable "container_access_type" {
    description = "The access type of blob containers"
}