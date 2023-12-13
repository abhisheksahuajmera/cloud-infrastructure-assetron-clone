# resource "azurecaf_naming_convention" "rg_name" {
#   prefix        = var.project_prefix
#   name          = "${var.environment_prefix}-${var.environment_version}"
#   resource_type = "rg"
#   postfix       = var.resource_group_version
# }

module "naming_convention" {
  source  = "Azure/caf-naming/azurerm"
  version = "1.2.10"

  conventions = {
    location            = "true"        # Include location in the naming convention
    environment         = "sandbox"     # Identify the environment (sandbox, prod, etc.)
    naming_prefix       = "myapp"       # Prefix for resource names
    platform            = "app"         # Specify the platform (app, db, etc.)
    resource_group_type = "app_rg"      # Type of resource group (app_rg, data_rg, etc.)
  }
}
