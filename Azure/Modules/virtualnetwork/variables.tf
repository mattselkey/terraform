variable "vnet_name" {
  type        = string
  description = "The name of the virtual network to be created"
}

variable "vnet_location" {
  type        = string
  description = "The location in which the virtual network will be created"
}

 variable "vnet_resourcegroup_name" {
  type        = string
  description = "The location in which the virtual network will be created"

 }
 
 variable "vnet_address_space"   {
  #exmaple = ["10.0.0.0/16"]
  type = list(any)
  description = "The address space for the network being created"

 }    
