module "azurerm_resource_group" {
  source = "../../child_modules/azurerm_resource_group"
  rgs    = var.rgs
}
module "azurerm_vnet" {
  source     = "../../child_modules/azurerm_vnet"
  vnets      = var.vnets
   depends_on = [module.azurerm_resource_group]
}
module "azurerm_subnet" {
  source     = "../../child_modules/azurerm_subnet"
  subnets    = var.subnets
   depends_on = [module.azurerm_vnet]
}
module "azurerm_storage_account" {
  source     = "../../child_modules/azurerm_storage_account"
  storage_account = var.storage_account
  depends_on = [module.azurerm_resource_group]

}




