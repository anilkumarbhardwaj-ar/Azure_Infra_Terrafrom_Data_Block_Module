resource "azurerm_public_ip" "pipblock" {
    for_each = var.pip
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.datargblock.name
  location            = data.azurerm_resource_group.datargblock.location
  allocation_method   = "Static"
}