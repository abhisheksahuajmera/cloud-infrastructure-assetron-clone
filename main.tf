# module "caf" {
#   source  = "aztfmod/caf/azurerm"
#   version = "~>5.5.0"
# }

module "bootstrapping_resource_group" {
  source   = "./modules/resource_group"
  location = var.resource_group_location
  # project_prefix         = var.project_prefix
  # environment_prefix     = var.environment_prefix
  # environment_version    = var.environment_version
  # resource_group_prefix  = var.resource_group_prefix
  # resource_group_version = var.resource_group_location
  resource_group_name = data.azurecaf_name.rg_example.result
  # provider_Var = azurecaf
  # providers = {
  #   azurecaf = azurecaf.azurecaf
  # }
  # azure_provider = azurerm
}

module "securing_adb2c" {
  source                  = "./modules/adb2c"
  country_code            = var.resource_group_location_country_code
  data_residency_location = var.resource_group_data_residency_location
  resource_group_name     = module.bootstrapping_resource_group.rg_name
}