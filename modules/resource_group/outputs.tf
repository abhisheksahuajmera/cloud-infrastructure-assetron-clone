output "rg_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.rg_tg.name
}

output "rg_location" {
  description = "Resource Group Location"
  value       = azurerm_resource_group.rg_tg.location
}

output "rg_id" {
  description = "Resource Group ID"
  value       = azurerm_resource_group.rg_tg.id
}