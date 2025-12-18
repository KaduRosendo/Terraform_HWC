terraform {
  backend "s3" {
    bucket   = "meu-terraform-state-hauwei-wave" # Verifique se a escrita está correta no console
    key      = "terraform.tfstate"
    region   = "la-south-2"
    
    endpoints = {
      s3 = "https://obs.la-south-2.myhuaweicloud.com"
    }

    # Configurações essenciais para Huawei OBS
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true # Necessário para não buscar conta AWS
    
    # Mantenha esta linha para evitar o erro anterior de SHA256
    skip_s3_checksum            = true 
    
    # REMOVA OU COMENTE A LINHA ABAIXO:
    # use_path_style           = true 
  }
}