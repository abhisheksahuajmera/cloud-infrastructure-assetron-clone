terraform {
    backend "azurerm" {
    resource_group_name   = "Assetronai-qa-101-rg-108"
    storage_account_name  = "sa110"
    container_name        = "sacon100"
    key                   = "state103.tfstate"
  }  
}