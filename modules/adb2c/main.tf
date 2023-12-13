resource "azurerm_aadb2c_directory" "azurerm_aadb2c_directorytg" {
  country_code            = var.country_code
  data_residency_location = var.data_residency_location
  display_name            = local.display_name
  domain_name             = local.domain_name
  resource_group_name     = var.resource_group_name ||module.bootstrapping_resource_group.rg_name
  sku_name                = local.sku_name
}