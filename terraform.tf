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

provider "azurerm" {
  alias                      = "management"
  subscription_id            = var.subscription_id_management
  skip_provider_registration = true
  use_oidc = true
  features {}
}

provider "azurerm" {
  alias                      = "connectivity"
  subscription_id            = var.subscription_id_connectivity
  skip_provider_registration = true
  use_oidc = true
  features {}
}