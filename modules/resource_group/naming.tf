resource "azurecaf_naming_convention" "rg_name" {
  prefix        = var.project_prefix
  name          = "${var.environment_prefix}-${var.environment_version}"
  resource_type = "rg"
  postfix       = var.resource_group_version
}