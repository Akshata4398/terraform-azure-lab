terraform {
  # Add this backend block
  backend "azurerm" {
    resource_group_name  = "kml_rg_main-28672d187af24c46"       # Your existing RG name
    storage_account_name = "tfstatestorage12345xyz" # Must match the name you created above
    container_name       = "tfstate-container"      # Must match the container you created above
    key                  = "terraform.tfstate"      # The name of the state file it will create
  }

}