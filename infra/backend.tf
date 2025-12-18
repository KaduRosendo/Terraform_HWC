terraform {
  backend "s3" {
    bucket   = "meu-terraform-state-hauwei-wave"
    key      = "terraform.tfstate"
    region   = "la-south-2"
    endpoint = "https://obs.la-south-2.myhuaweicloud.com"

    # Configurações obrigatórias para Huawei Cloud
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    
    # Esta linha desativa o cabeçalho que causa o erro de Mismatch
    skip_s3_checksum            = true

    # Mantendo como false para usar Virtual Host Style
    use_path_style              = false
  }
}