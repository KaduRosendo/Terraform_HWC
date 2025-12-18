terraform {
  backend "s3" {
    bucket   = "meu-terraform-state-hauwei-wave"
    key      = "terraform.tfstate"
    region   = "la-south-2"
    endpoint = "https://obs.la-south-2.myhuaweicloud.com"

    # Configurações recomendadas pelo guia do provider
    skip_region_validation      = true
    skip_metadata_api_check     = true
    skip_credentials_validation = true
    
    # Necessário para evitar que o Terraform busque serviços da AWS
    skip_requesting_account_id  = true
  }
}