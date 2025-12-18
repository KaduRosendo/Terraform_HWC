terraform {
  backend "s3" {
    bucket   = "meu-terraform-state-hauwei-wave" # Certifique-se da escrita exata
    key      = "terraform.tfstate"
    region   = "la-south-2"
    endpoint = "https://obs.la-south-2.myhuaweicloud.com"

    # Flags que são 100% suportadas na versão 1.5.7
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    
    # Resolve o erro de integridade de dados na Huawei Cloud
    # skip_s3_checksum            = true
  }
}