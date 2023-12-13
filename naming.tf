# bootstrapping_resource_group
resource "azurecaf_name" "rg_name" {
  prefixes      = ["${var.project_prefix}"]
  name          = "${var.environment_prefix}-${var.environment_version}"
  resource_type = "azurerm_resource_group"
  suffixes      = ["${var.resource_group_version}"]
  random_length = 0
}

# securing_adb2c
resource "azurecaf_name" "adb2c_name" {
  name          = "${var.environment_prefix}-${var.environment_version}"
  resource_type = "azurerm_aadb2c_directory"
  prefixes      = ["${var.project_prefix}"]
  suffixes      = ["${var.resource_group_version}"]
  random_length = 0
}

locals {
  adb2c_name_modified = replace(replace(azurecaf_name.adb2c_name.result, "-", " "), "_", " ")
}