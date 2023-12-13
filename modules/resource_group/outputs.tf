output "nameop" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.azurerm_resource_grouptg.name
}

output "locationop" {
  description = "Resource Group Location"
  value       = azurerm_resource_group.azurerm_resource_grouptg.location
}