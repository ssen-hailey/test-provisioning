terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket         = "seeun-id-apnortheast2-tfstate"
    key            = "provisioning/terraform/platform/jenkins/seeun_id_apnortheast2/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

