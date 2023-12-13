variable "country_code" {
  type        = string
  description = "country_code"
}

variable "data_residency_location" {
  type        = string
  description = "data_residency_location"
}

variable "resource_group_name" {
  type        = string
  description = "resource_group_name"
}

variable "prefix" {
  type        = string
  description = "(Required)"
  default     = "aadb2c"
}

variable "domain_suffix" {
  type        = string
  description = "(Required)"
  default     = ".onmicrosoft.com"
}

variable "aadb2c_version" {
  type        = string
  description = "(Required)"
  default     = "101"
}

variable "sku_name" {
  type        = string
  description = "(Required)"
  default     = "PremiumP1"
}

locals {
  display_name          = "${var.prefix}${var.aadb2c_version}"
  display_name_modified = replace(local.display_name, "-", "")
  domain_name           = "${local.display_name}${var.domain_suffix}"
  sku_name              = var.sku_name
}