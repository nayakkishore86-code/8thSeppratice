rgs = {
  rg1 = {
    name     = "kk_dev_rg"
    location = "centralindia"
  }
  rg2 = {
    name     = "kk_test_rg"
    location = "eastus"
  }

  rg3 = {
    name     = "kk_test2_rg"
    location = "eastus"
}

storage_account = {

  sa1 = {
    name              = "kishorestg001"
    rg_name           = "kk_dev_rg"
    location          = "centralindia"
	account_tier      = "Standard"
    replication_type  = "LRS"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet-kkdev"
    location            = "centralindia"
    resource_group_name = "kk_dev_rg"
    address_space       = ["10.26.0.0/16"]
  }

  vnet2 = {
    name                = "vnet-kktest"
    location            = "centralus"
    resource_group_name = "kk_test_rg"
    address_space       = ["10.27.0.0/16"]
  }
}
subnets = {
  sn1 = {
    name                 = "subnet-kkdev"
    resource_group_name  = "kk_dev_rg"
    virtual_network_name = "vnet-kkdev"
    address_prefixes     = ["10.26.1.0/24"]
  }

  sn2 = {
    name                 = "subnet-kktest"
    resource_group_name  = "kk_test_rg"
    virtual_network_name = "vnet-kktest"
    address_prefixes     = ["10.27.1.0/24"]
  }
}