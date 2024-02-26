terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
}

provider "azurerm" {

  features {} 
  use_msi = true
  skip_provider_registration = true  
}
resource "azurerm_resource_group" "example" {
  name     = "example"
  location = "West Europe"
}