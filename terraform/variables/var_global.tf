variable "assume_role_arn" {
  description = "The role to assume when accessing the AWS API."
  default     = ""#"arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
}

# Atlantis user
variable "atlantis_user" {
  description = "The username that will be triggering atlantis commands. This will be used to name the session when assuming a role. More information - https://github.com/runatlantis/atlantis#assume-role-session-names"
  default     = "atlantis_user"
}

# Account IDs
# Add all account ID to here 
variable "account_id" {
  default = {
    id        = "680463082671"
    art-id    = "816736805842"
    datadog   = "464622532012"
    sumologic = "926226587429"
  }
}

# Remote State that will be used when creating other resources
# You can add any resource here, if you want to refer from others
variable "remote_state" {
  default = {
    vpc = {
      tmcd_apnortheast2 = {
        bucket = "seeun-id-apnortheast2-tfstate"
        key    = "provisioning/terraform/vpc/tmcd_apnortheast2/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }
    iam = {
      seeun-id = {
        bucket = "seeun-id-apnortheast2-tfstate"
        key    = "provisioning/terraform/iam/seeun-id/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }

    kms = {
      seeun-id = {
        apne2 = {
          bucket = "seeun-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/kms/seeun-id/ap-northeast-2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    ecs = {
      nginx = {
        tmcdapne2 = {
          bucket = "seeun-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/ecs/nginx/tmcd_apnortheast2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
      demo = {
        tmcdapne2 = {
          bucket = "seeun-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/ecs/demo/tmcd_apnortheast2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    security_group = {
      seeun-id = {
        tmcdapne2 = {
          bucket = "seeun-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/securitygroup/seeun-id/tmcd_apnortheast2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    codedeploy = {
      seeun-id = {
        apne2 = {
          bucket = "seeun-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/codedeploy/ap-northeast-2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    secretsmanager = {
      seeun-id = {
        apne2 = {
          bucket = "seeun-id-apnortheast2-tfstate"
          key    = "provisioning/terraform/secretsmanager/seeun-id/ap-northeast-2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    eks = {
      tmcdapne2-nhwy = {
        bucket = "seeun-id-apnortheast2-tfstate"
        key    = "provisioning/terraform/eks/tmcd_apnortheast2/tmcdapne2-nhwy/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }

    s3 = {
      seeun-id = {
        bucket = "seeun-id-apnortheast2-tfstate"
        key    = "provisioning/terraform/s3/seeun-id/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }
  }
}
