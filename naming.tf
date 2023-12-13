# resource "azurecaf_naming_convention" "rg_name" {
#   prefix        = var.project_prefix
#   name          = "${var.environment_prefix}-${var.environment_version}"
#   resource_type = "rg"
#   postfix       = var.resource_group_version
# }

# module "naming_convention" {
#   source  = "Azure/caf-naming/azurerm"
#   version = "1.2.10"

#   conventions = {
#     location            = "true"        # Include location in the naming convention
#     environment         = "sandbox"     # Identify the environment (sandbox, prod, etc.)
#     naming_prefix       = "myapp"       # Prefix for resource names
#     platform            = "app"         # Specify the platform (app, db, etc.)
#     resource_group_type = "app_rg"      # Type of resource group (app_rg, data_rg, etc.)
#   }
# }

# bootstrapping_resource_group
# resource "azurecaf_name" "rg_caf_name" {
#   name            = "demogroup"
#     resource_type   = "azurerm_resource_group"
#     prefixes        = ["a", "b"]
#     suffixes        = ["y", "z"]
#     random_length   = 5
#     clean_input     = true
# }

data "azurecaf_name" "rg_example" {
  name          = "demogroup"
  resource_type = "azurerm_resource_group"
  prefixes      = ["a", "b"]
  suffixes      = ["y", "z"]
  random_length = 5
  clean_input   = true
}