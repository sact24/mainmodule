provider "azurerm" {
  features {}
}



resource "azurerm_resource_group" "rg" {
  name     = "jokamoka"
  location = "centralindia"
}



