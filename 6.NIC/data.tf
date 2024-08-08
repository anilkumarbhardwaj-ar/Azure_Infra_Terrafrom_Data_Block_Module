data "azurerm_resource_group" "datargblock" {
  name = "aratidev"
}

data "azurerm_subnet" "datasubblock" {
  name                 = "subdev"
  virtual_network_name = "vnetdev"
  resource_group_name  = data.azurerm_resource_group.datargblock.name
}

data "azurerm_public_ip" "datapipblock" {
  name                = "pipdev"
  resource_group_name = data.azurerm_resource_group.datargblock.name
}