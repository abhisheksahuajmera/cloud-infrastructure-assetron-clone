variable "project_prefix" {
  type        = string
  description = "Project Prefix"
}

variable "environment_prefix" {
  description = "Environment Prefix (ex. DEV, STAGING, PROD)"
  type        = string
}

variable "environment_version" {
  type        = string
  description = "Environment Version "
}

variable "resource_group_prefix" {
  type        = string
  description = "Resource Group Prefix"
}

variable "resource_group_version" {
  type        = string
  description = "Resource Group Version"
}

variable "location" {
  type        = string
  description = "Resource Group Location"
}

variable "azure_provider" {
  description = "Azure Provider Configuration"
}

data "azurerm_resource_group" "example" {
  provider = var.azure_provider
}

# data "azurecaf_name" "rg_example" {
#   name          = "demogroup"
#   resource_type = "azurerm_resource_group"
#   prefixes      = ["a", "b"]
#   suffixes      = ["y", "z"]
#   random_length = 5
#   clean_input   = true
# }