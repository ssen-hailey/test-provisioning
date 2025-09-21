locals {
  encrypted_values = data.sops_file.secret_values.data

  jenkins_envirement_variables = [
    {
      env_name  = "SERVICE_NAME",
      env_value = "JENKINS"
    },
    {
      env_name  = "VPC_NAME",
      env_value = "vpc-sed_apnortheast2"
    },
    {
      env_name  = "TARGET_GROUP_NAME",
      env_value = "jenkins-sedapne2-ext"
    },
    {
      env_name  = "SECURITY_GROUP_NAME",
      env_value = "jenkins-sed_apnortheast2"
    },
    {
      env_name  = "EFS_NAME",
      env_value = "jenkins-efs-sed_apnortheast2"
    },
    {
      env_name  = "ORG_NAME",
      env_value = "seeun-devops"
    },
    {
      env_name  = "TEAM_NAME",
      env_value = "admin"
    },
  ]
  demo_envirement_variables = [
    {
      env_name  = "SERVICE_NAME",
      env_value = "demoapp"
    },
    {
      env_name  = "VPC_NAME",
      env_value = "vpc-sed_apnortheast2"
    },
    {
      env_name  = "TARGET_GROUP_NAME",
      env_value = "demoapp-sedapne2-ext"
    },
    {
      env_name  = "SECURITY_GROUP_NAME",
      env_value = "demoapp-sed_apnortheast2"
    },
  ]
}