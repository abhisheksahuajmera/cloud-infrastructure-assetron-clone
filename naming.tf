# bootstrapping_resource_group
resource "azurecaf_name" "rg_name" {
  prefixes      = ["${var.project_prefix}"]
  name          = var.environment_prefix
  resource_type = "azurerm_resource_group"
  suffixes      = [local.resource_group_location_modified]
  random_length = 0
}

# securing_adb2c
resource "azurecaf_name" "adb2c_name" {
  name          = var.environment_prefix
  resource_type = "azurerm_aadb2c_directory"
  prefixes      = ["${var.project_prefix}"]
  suffixes      = [local.resource_group_location_modified]
  random_length = 0
}

locals {
  resource_group_location_modified = replace(var.resource_group_version, " ", "")
  adb2c_name_modified              = replace(replace(azurecaf_name.adb2c_name.result, "-", " "), "_", " ")
}