resource "azurerm_network_interface" "NicBlock" {
    for_each = var.nic
  name                = each.value.name
  location            = data.azurerm_resource_group.datargblock.location
  resource_group_name = data.azurerm_resource_group.datargblock.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.datasubblock.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.datapipblock.id
  }
}