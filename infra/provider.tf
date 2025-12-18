terraform {
  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = "1.82.2"
    }
  }
}

provider "huaweicloud" {
  region = var.hw_region
  access_key = var.hw_ak
  secret_key = var.hw_sk
  project_id = var.hw_project_id
}