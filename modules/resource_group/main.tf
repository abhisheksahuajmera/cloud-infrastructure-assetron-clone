# resource "azurerm_resource_group" "rg_tg" {
#   name     = var.name
#   location = var.location
# }

# resource "azurerm_resource_group" "rg_tg" {
#   name     = azurecaf_naming_convention.rg_name.result
#   location = var.location
# }

# resource "azurerm_resource_group" "rg_tg" {
#   name     = module.naming_convention.resource_group_name
#   location = var.location
# }

resource "azurerm_resource_group" "rg_tg" {
  name     = var.resource_group_name
  location = var.location
}