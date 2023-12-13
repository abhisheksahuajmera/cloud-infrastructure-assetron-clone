variable "org" {
  type        = string
  description = "Org Name"
  default     = ""
}

variable "project" {
  type        = string
  description = "Project Name"
  default     = ""
}

variable "project_prefix" {
  type        = string
  description = "Project Prefix"
  default     = ""
}

variable "environment" {
  description = "Environment Name (ex. DEV, STAGING, PROD)"
  type        = string
  default     = ""
}

variable "environment_version" {
  type        = string
  description = "Environment Version "
  default     = ""
}

variable "state_resource_group_name" {
  type        = string
  description = "Resource Group Name where the state file will be stored"
  default     = ""
}

variable "state_storage_account_name" {
  type        = string
  description = "Storage Account Name to which the state file is linked"
  default     = ""
}

variable "state_container_name" {
  type        = string
  description = "Storage Container Name where the state file will be stored"
  default     = ""
}

variable "state_key" {
  type        = string
  description = "Storage Blob File"
  default     = ""
}

variable "resource_group_version" {
  type        = string
  description = "Resource Group Version"
  default     = ""
}

variable "resource_group_prefix" {
  type        = string
  description = "Resource Group Prefix"
  default     = ""
}

variable "resource_group_location" {
  type        = string
  description = "Resource Group Location"
  default     = ""
}

variable "resource_group_location_country_code" {
  type        = string
  description = "Resource Group Location Country Code"
  default     = ""
}

variable "resource_group_data_residency_location" {
  type        = string
  description = "Resource Group Data Residency Location"
  default     = ""
}

locals {
  resource_group_name = "${var.project_prefix}-${var.environment}-${var.environment_version}-${var.resource_group_prefix}-${var.resource_group_version}"
}