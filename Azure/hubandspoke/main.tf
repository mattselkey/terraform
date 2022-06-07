provider "azurerm" {
  features {}
}


module "resourcegroup" {
  source = "./../modules/resourcegroup/"

  name = var.rg_name
  location = var.rg_location
}

module "virtualnetwork"{
  source = "./../modules/virtualnetwork/"

  for_each = var.virtualnetworks
  vnet_name  = each.value.name
  vnet_address_space = each.value.address_space
  vnet_location = var.rg_location
  vnet_resourcegroup_name = var.rg_name
}

module "subnet"{
  source = "./../modules/subnet/"
  
  for_each = var.subnets
  vnet_name  = module.virtualnetwork.vnet_name[each.key]
  subnet_address_space = var.subnet_address_space
  subnet_location = var.subnet_location
  subnet_resourcegroup_name = var.subnet_resourcegroup_name


}