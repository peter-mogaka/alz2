# Configure Terraform to set the required AzureRM provider
# version and features{} block

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.74.0"
    }
  }
  backend "azurerm" {}
}

# Define the provider configuration
provider "azurerm" {
  features {}
}
