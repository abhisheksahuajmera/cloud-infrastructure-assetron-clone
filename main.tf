module "bootstrapping_resource_group" {
  source   = "./modules/resource_group"
  name     = local.resource_group_name
  location = var.resource_group_location
}

data "azurerm_resource_group" "azurerm_resource_grouptg" {
  name     = module.bootstrapping_resource_group.nameop
  location = module.bootstrapping_resource_group.locationop
}

module "securing_adb2c" {
  source                  = "./modules/adb2c" // Add version after registry
  country_code            = var.resource_group_location_country_code
  data_residency_location = var.resource_group_data_residency_location
  resource_group_name     = data.azurerm_resource_group.azurerm_resource_grouptg.name
}