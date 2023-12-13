terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }

    # azurecaf = {
    #   source = "aztfmod/azurecaf"
    #   version = "1.2.10"
    # }
  }
}

provider "azurerm" {
  features {}
}

# provider "azurecaf" {
# }