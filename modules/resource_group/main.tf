resource "azurerm_resource_group" "rg_tg" {
  name     = azurecaf_name.rg_name.result
  location = var.location
}