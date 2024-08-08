#1 Resource Group Module
module "modrg" {
  source = "../../1.Resource_Group"
  rgname = var.rgname

}

# 2 NSG variable Module

module "modnsg" {
   depends_on = [ module.modrg,module.modvnet ]
  source = "../../2.Network_Security_group"
  nsg    = var.nsg

}
# 3 Virtual Network variable Module 

module "modvnet" {
   depends_on = [ module.modrg ]
  source = "../../3.Virtual_Network"
  vnet   = var.vnet

}
# 4 Subnet variable Module 

module "modsub" {
   depends_on = [ module.modvnet,module.modrg ]
  source = "../../4.Subnet"
  subnet = var.subnet

}
# 5 Public IP address variable Module 
module "modpip" {
   depends_on = [ module.modsub ]
  source = "../../5.Public_IP"
  pip    = var.pip

}

# 6 NIC variable Module 
module "modnic" {
   depends_on = [ module.modpip ]
  source = "../../6.NIC"
  nic    = var.nic

}

# 7 Virtual Machine variable Module 
module "modvm" {
   depends_on = [ module.modrg,module.modnic,module.modvnet ]
  source = "../../7.VM"
  vm     = var.vm

}