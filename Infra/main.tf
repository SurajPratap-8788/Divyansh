module "azurerm_resource_group" {
  source = "../Module/azurerm_resource_group"

  resource_groups = var.resource_groups
}
module "azurerm_virtual_network" {
  depends_on = [module.azurerm_resource_group]
  source = "../Module/azurerm_virtual_network"

  virtual_networks = var.virtual_networks

}