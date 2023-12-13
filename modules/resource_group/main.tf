resource "azurerm_resource_group" "rg_tg" {
  name     = module.naming_convention.resource_group_name //" " //azurecaf_naming_convention.rg_name.result
  location = var.location
}