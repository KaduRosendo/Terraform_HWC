terraform {
  backend "s3" {
    bucket   = "meu-terraform-state-hauwei-wave"
    key      = "terraform.tfstate"
    region   = "la-south-2"
    
    # Sintaxe atualizada para evitar o Warning
    endpoints = {
      s3 = "https://obs.la-south-2.myhuaweicloud.com"
    }

    # Configurações de compatibilidade total com Huawei OBS
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    
    # ESTAS DUAS LINHAS SÃO A SOLUÇÃO PARA O SEU ERRO
    use_path_style              = true 
    skip_s3_checksum            = true
  }
}