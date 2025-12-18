terraform {
  backend "s3" {
    bucket   = "meu-terraform-state-hauwei-wave" # Certifique-se de que o nome está identico ao console
    key      = "terraform.tfstate"
    region   = "la-south-2"
    endpoint = "https://obs.la-south-2.myhuaweicloud.com"

    # Desativa todas as verificações específicas da AWS
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    
    # O SEGREDO: Força o Terraform a ignorar o Checksum que está dando erro
    skip_s3_checksum            = true
    
    # IMPORTANTE: Mantenha como false (ou comente) para evitar o erro de Virtual Host
    # use_path_style            = true 
  }
}