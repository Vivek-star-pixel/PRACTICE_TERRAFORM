# resource "azurerm_resource_group" "rg" {
#   name     = "import_rg"
#   location = "Central India"
# }

# import {
#   to = azurerm_resource_group.rg
#   id = "/subscriptions/cfc0d37c-0341-4d06-bcf3-35b93770a2ee/resourceGroups/import_rg"
# }