# Resource Groups
resource_group = {
    rg1 = { 
        name     = "new-rg1"
        location = "centralindia" }
     rg2 = { 
        name     = "new-rg2"
        location = "centralindia" } 
}

# Storage Accounts

storages = {
    stg1 ={
          name                     = "newstgajay1"
          resource_group_name      = "new-rg1"
          location                 = "centralindia"
          account_tier             = "Standard"
          account_replication_type = "LRS"
    }
    # stg2 ={}
}

# Virtual Networks
virtualnets = {
    vnet1 = {
      name                = "myvnet1"
      location            = "centralindia"
      resource_group_name = "new-rg1"
      address_space       = [ "10.0.1.0/16" ]
    }
}

subnets = {
    subnet1 = {
        name                 = "frontendsubnet"
        resource_group_name  = "new-rg1"
        virtual_network_name = "myvnet1"
        address_prefixes     = ["10.0.1.0/24"]
    }

        subnet1 = {
        name                 = "frontendsubnet2"
        resource_group_name  = "new-rg1"
        virtual_network_name = "myvnet1"
        address_prefixes     = ["10.0.2.0/24"]
    }
}