resource "azurerm_virtual_network" "virtualnetwork" {
  name                = var.vnet_name
  location            = var.vnet_location
  resource_group_name = var.vnet_resourcegroup_name
  address_space       = var.vnet_address_space

}