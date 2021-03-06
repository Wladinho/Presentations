####################
# DATA
####################

data "azurerm_resource_group" "rg" {
  name = "project-terraform-bih"
}

data "azurerm_subnet" "linux_subnet" {
  name                 = "linux-subnet"
  virtual_network_name = "project-terraform-vnet"
  resource_group_name  = "project-terraform-bih"
}

data "azurerm_storage_account" "sa" {
  name                = "projectterraformbih466"
  resource_group_name = "project-terraform-bih"
}