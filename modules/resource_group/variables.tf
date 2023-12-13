variable "project_prefix" {
  type        = string
  description = "Project Prefix"
}

variable "environment_prefix" {
  description = "Environment Prefix (ex. DEV, STAGING, PROD)"
  type        = string
}

variable "environment_version" {
  type        = string
  description = "Environment Version "
}

variable "resource_group_prefix" {
  type        = string
  description = "Resource Group Prefix"
}

variable "resource_group_version" {
  type        = string
  description = "Resource Group Version"
}

variable "location" {
  type        = string
  description = "Resource Group Location"
}