/*
terraform {
  backend "s3" {
    bucket   = "meu-terraform-state-hauwei-wave" 
    key      = "terraform.tfstate"
    region   = "la-south-2"
    endpoint = "https://obs.la-south-2.myhuaweicloud.com"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    
  }
}
*/