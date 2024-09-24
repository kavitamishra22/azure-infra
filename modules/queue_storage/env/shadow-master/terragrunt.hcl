terraform { 
    source = "../../code/"
}

inputs = {
    storage_account_name      = "eumazureshadowmaster22"
    resource_group_name       = "eum-platform"
    location                  = "central india"
    account_tier              = "Standard"
    account_replication_type  = "LRS"
    container_access_type     = "private"
    tags                      = { 
        # CostCenter              = "020027988"
        CreatedBy             = "Kavita Mishra"
        # DataClassification      = "Cisco Confidentials"
        DeploymentEnvironment = "Dev"
        # JIRAProject             = "EUMPLAT"
        ResourceOwner         = "kavitamishra22.km@gmail.com"
        SecurityReview        = "NA"
    }
    
    blob_container_names = csvdecode(file("${path_relative_to_include()}/eum_shadowmaster_container_names.csv"))[*].container_name
        
}