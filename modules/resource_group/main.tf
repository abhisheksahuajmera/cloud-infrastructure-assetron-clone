resource "azurerm_resource_group" "rg_tg" {
  name     = var.resource_group_name
  location = var.location
}