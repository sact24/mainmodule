output "botip" {
    value = azurerm_resource_group.rg.name
}

output "dbip" {
    value = azurerm_resource_group.rg.location
}

resource "local_file" "inventory_file" {
    content = <<-EOF
    [webservers]
    ${azurerm_resource_group.rg.name}
    [dbservers]
    ${azurerm_resource_group.rg.location}
    EOF
    filename =  "hosts"
}
