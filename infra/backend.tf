terraform {
# COMENTE TUDO ISSO PARA O PRÓXIMO PUSH
#  backend "s3" {
#    bucket   = "meu-terraform-state-hauwei-wave"
#    key      = "terraform.tfstate"
#    region   = "la-south-2"
#    
#    # Sintaxe nova que remove o Warning:
#    endpoints = {
#      s3 = "https://obs.la-south-2.myhuaweicloud.com"
#    }
#
#    skip_region_validation      = true
#    skip_credentials_validation = true
#    skip_metadata_api_check     = true
#    skip_requesting_account_id  = true
#    skip_s3_checksum            = true
#  }
}