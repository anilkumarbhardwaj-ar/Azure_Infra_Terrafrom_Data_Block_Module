data "azurerm_resource_group" "datargblock" {
  name = "aratidev"
}


data "azurerm_virtual_network" "datavnetblock" {
  name                = "vnetdev"
  resource_group_name = data.azurerm_resource_group.datargblock.name
}