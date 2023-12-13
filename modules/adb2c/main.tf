resource "azurerm_aadb2c_directory" "aadb2c_tg" {
  country_code            = var.country_code
  data_residency_location = var.data_residency_location
  display_name            = var.display_name
  domain_name             = "${var.display_name}.onmicrosoft.com"
  resource_group_name     = var.resource_group_name
  sku_name                = "PremiumP1"
}