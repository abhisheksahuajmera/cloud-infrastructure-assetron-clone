terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">= 0.1.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
    
    azurecaf = {
      source = "aztfmod/azurecaf"
      version = "1.2.11"
    }
  }
}

provider "azurerm" {
  features {}
}