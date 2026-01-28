variable "resource_group" {
  type = map(any)
}

variable "storages" {
  type = map(any)
}

variable "virtualnets" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

variable "subnets" {
    type = map(object({
            name                 = string
            resource_group_name  = string
            virtual_network_name = string
            address_prefixes     = list (string)
    }))
}
