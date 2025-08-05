resource "azurerm_resource_group" "resource_group1" {
  name     = "durgesh1"
  location = "West Europe"
}

resource "azurerm_storage_account" "sa1" {
  name                     = "durgeshkitijori1"
  resource_group_name      = azurerm_resource_group.resource_group1.name
  location                 = azurerm_resource_group.resource_group1.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "SC1" {
  name                  = "scdurgesh1"
  storage_account_id    = azurerm_storage_account.sa1.id
  container_access_type = "private"
}