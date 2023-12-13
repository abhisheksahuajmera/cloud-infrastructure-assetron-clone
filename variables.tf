variable "org" {
  type        = string
  description = "Org Name"
  default     = ""
}

variable "project_prefix" {
  type        = string
  description = "Project Prefix"
  default     = ""
}

variable "environment_prefix" {
  description = "Environment Prefix (ex. DEV, STAGING, PROD)"
  type        = string
  default     = ""
}

variable "environment_version" {
  type        = string
  description = "Environment Version "
  default     = ""
}

variable "resource_group_prefix" {
  type        = string
  description = "Resource Group Prefix"
  default     = ""
}

variable "resource_group_version" {
  type        = string
  description = "Resource Group Version"
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