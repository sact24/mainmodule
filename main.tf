provider "azurerm" {
  features {}
}



resource "azurerm_resource_group" "rg" {
  name     = var.resource_name
  location = "centralindia"
}

resource   "azurerm_virtual_network"   "vnet"   { 
   name   =   "devvnet" 
   address_space   =   [ "10.0.0.0/16" ] 
   location   =   "centralindia" 
   resource_group_name   =   azurerm_resource_group.rg.name 
 } 

 resource   "azurerm_subnet"   "subnet"   { 
   name   =   var.subnet_name 
   resource_group_name   =    azurerm_resource_group.rg.name 
   virtual_network_name   =   azurerm_virtual_network.vnet.name 
   address_prefixes   =   ["10.0.1.0/24"] 
 }

