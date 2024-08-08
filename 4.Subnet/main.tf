resource "azurerm_subnet" "subblock" {
for_each = var.subnet
  name                 = each.value.name
  resource_group_name  = data.azurerm_resource_group.datargblock.name
  virtual_network_name = data.azurerm_virtual_network.datavnetblock.name
  address_prefixes     = each.value.address_prefixes

}
