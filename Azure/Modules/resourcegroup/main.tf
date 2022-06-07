resource "azurerm_resource_group" "hubandspoke" {
  name     = var.name
  location = var.location
}