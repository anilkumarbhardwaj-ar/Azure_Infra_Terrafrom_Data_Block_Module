resource "azurerm_virtual_network" "vnetblock" {
  for_each = var.vnet
  name                = each.value.name
  location            = data.azurerm_resource_group.datargblock.location
  resource_group_name = data.azurerm_resource_group.datargblock.name
  address_space       = ["10.0.0.0/16"]
}