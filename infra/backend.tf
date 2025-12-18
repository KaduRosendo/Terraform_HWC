# terraform {
#   backend "s3" {
#     bucket   = "BackendOBSWave" 
#     key      = "terraform.tfstate"
#     region   = "la-south-2a"
#     endpoint = "https://obs.la-south-2a.myhuaweicloud.com"
#     skip_region_validation      = true
#     skip_credentials_validation = true
#     skip_metadata_api_check     = true
#   }
# }