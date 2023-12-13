# bootstrapping_resource_group
resource "azurecaf_name" "rg_name" {
  name          = "${var.environment_prefix}-${var.environment_version}"
  resource_type = "rg"
  prefixes      = ["${var.project_prefix}"]
  suffixes      = ["${var.resource_group_version}"]
  random_length = 0
}

# securing_adb2c
# resource "azurecaf_name" "rg_name" {
#   name          = "${var.environment_prefix}-${var.environment_version}"
#   resource_type = "aadb2c"
#   prefixes      = ["${var.project_prefix}"]
#   suffixes      = ["${var.resource_group_version}"]
#   random_length = 0
# }