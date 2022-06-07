variable "rg_name" {
  type        = string
  description = "The name of the resource group to be created"
  default = "hubandspoke_rg"
}

variable "rg_location" {
  type        = string
  description = "The location in which the resource group will be created"
  default = "Switzerland North"
}

variable "virtualnetworks" {

type = map(any)
 
 default = {
    vnet_1 = {
        name = "hub"
        address_space = ["10.222.4.0/22"]
    }
    vnet_2 = {
        name = "spoke_1"
        address_space = ["10.222.8.0/22"]
    }
    vnet_3 = {
        name = "spoke_2"
        address_space = ["10.222.12.0/22"]
    }
}
}

variable "subnets" {

type = map(any)
 
 default = {
    subnet_1 = {
        name = "hub"
        address_space = ["10.222.8.128/26"]
    }
    subnet_2 = {
        name = "spoke_1"
        address_space = ["10.222.8.0/27"]
    }
    subnet_3 = {
        name = "spoke_2"
        address_space = ["10.222.8.192/27"]
    }
}

}