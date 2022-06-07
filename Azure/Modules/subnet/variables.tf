variable "subnet_name" {
  type        = string
  description = "The name of the subnet to be created"
}

variable "subnet_location" {
  type        = string
  description = "The location in which the subnet will be created"
}

variable "subnet_virtual_network_name" {
  type        = string
  description = "The name of the virtual network in which the subnet will be created"
}

 variable "subnet_resourcegroup_name" {
  type        = string
  description = "The location in which the subnet will be created"

 }
 
 variable "subnet_address_space"   {
  #exmaple = ["10.0.0.0/16"]
  type = list(any)
  description = "The address space for the subnet being created"

 }    
