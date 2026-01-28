module "resourcegrp" {
 source = "../module/resorce_group"
 resource_groups = var.resource_group
}

module "stgmodule" {
    source = "../module/storage"
    depends_on = [ module.resourcegrp ]
    stg = var.storages
}

module "vnet" {
    source = "../module/Vnet"
    depends_on = [ module.resourcegrp ]
    vnets = var.virtualnets
}

module "subnet" {
    depends_on = [module.resourcegrp, module.vnet ]
    source = "../module/subnet"
    subnet = var.subnets
}