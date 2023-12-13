resource "azurerm_resource_group" "rg_tg" {
  name     = azurecaf_naming_convention.rg_name.result
  location = var.location
}