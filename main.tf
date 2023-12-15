module "bootstrapping_resource_group" {
  source              = "./modules/resource_group"
  location            = var.resource_group_location
  resource_group_name = azurecaf_name.rg_name.result
}

# module "securing_adb2c" {
#   source                  = "./modules/adb2c"
#   country_code            = var.resource_group_location_country_code
#   data_residency_location = var.resource_group_data_residency_location
#   display_name            = local.adb2c_name_modified
#   resource_group_name     = module.bootstrapping_resource_group.rg_name
# }

# module "networking_public_ip" {
#   source              = "./modules/public_ip"
#   name                = azurecaf_name.public_ip_name.result
#   resource_group_name = module.bootstrapping_resource_group.rg_name
#   location            = module.bootstrapping_resource_group.rg_location
# }
