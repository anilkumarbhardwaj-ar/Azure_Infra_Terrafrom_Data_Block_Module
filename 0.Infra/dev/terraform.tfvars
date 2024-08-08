# 1 Adding value in  the Resource Group variable

rgname = {
  rg1 = {
    name     = "aratidev"
    location = "Central India"
  }
}


# 2 Adding value in  the NSG variable

nsg = {
  nsg1 = {
    name = "nsgroupdev"
  }
}

# 3 Adding value in  the Virtual Network variable

vnet = {
  vnet1 = {
    name          = "vnetdev"
    address_space = "[10.0.0.0/16]"
  }
}

# 4 Adding value in  the Subnet variable
subnet = {
  sub1 = {
    name             = "subdev"
    address_prefixes = ["10.0.1.0/24"] # total subnet 256-2 = 254    128.64.32.16.8.4.2.1
  }
}


# 5 Adding value in  the Public IP address variable

pip = {

  pip1 = {
    name = "pipdev"
  }
}

# 6 Adding value in  the NIC variable

nic = {
  nic1 = {
    name = "nicdev"
  }
}

# 7 Adding value in  the Virtual Machine variable

vm = {

  vm1 = {
    name = "vmdev"
  }
}
