resource "azurerm_public_ip" "web_server_ip" {
  name                = var.name
  location            = var.location 
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}