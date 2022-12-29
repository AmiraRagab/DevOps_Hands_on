resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "Westus2"
}

resource "azurerm_virtual_machine" "main" {
  name                  = "main-vm"
  location              = "Westus2"
  resource_group_name   = "example-resources"
  vm_size               = "Standard_DS1_v2"
}