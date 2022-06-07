resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.subnet_resourcegroup_name
  virtual_network_name = var.subnet_virtual_network_name
  address_prefixes     = var.subnet_address_space

}