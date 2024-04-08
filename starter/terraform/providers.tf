terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.110.0"
    }
  }

  backend "s3" {
    endpoint="storage.yandexcloud.net"
	bucket="mydiplom"
    region="ru-central1"
    workspace_key_prefix="tfstates"
    key="cloud.tfstate"
	access_key="YCAJEnb5HsszmKsV9SYmABwH8"
    secret_key="YCPIjOW3_EZImdHx4yp1me0EtOe53FmaMOyrAp27"
    skip_region_validation=true
    skip_credentials_validation=true

  }
}

locals {
  folder_id = "b1gegnnp4nj6ob9hcb8q"
  cloud_id = "b1gifdl5coojd8828gst"
}

provider "yandex" {
  folder_id = local.folder_id
  cloud_id = local.cloud_id
  service_account_key_file = "key.json"
  zone = "ru-central1-a"
}