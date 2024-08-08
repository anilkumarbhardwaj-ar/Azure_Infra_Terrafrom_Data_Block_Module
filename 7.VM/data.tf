data "azurerm_resource_group" "datargblock" {
  name = "aratidev"
}

data "azurerm_network_interface" "datanicblock" {
  name                = "nicdev"
  resource_group_name = data.azurerm_resource_group.datargblock.name
}