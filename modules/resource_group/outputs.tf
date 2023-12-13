output "rg_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.azurerm_resource_grouptg.name
}

output "rg_location" {
  description = "Resource Group Location"
  value       = azurerm_resource_group.azurerm_resource_grouptg.location
}

output "rg_id" {
  description = "Resource Group ID"
  value       = azurerm_resource_group.azurerm_resource_grouptg.id
}