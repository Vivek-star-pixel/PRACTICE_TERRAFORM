resource "azurerm_resource_group" "rg" {
  name     = "demo-rg1"
  location = "East US"
}

resource "azurerm_storage_account" "sa" {
  name                     = "demostoragevivek123"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_public_ip" "pip" {
  name                = "demo-pip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
}

# ❌ Sensitive data directly exposed
output "storage_key" {
  value = azurerm_storage_account.sa.primary_access_key
    sensitive = true
}

# ❌ Public IP also visible (less risky but still exposed)
output "public_ip" {
  value = azurerm_public_ip.pip.ip_address
    sensitive = true
}