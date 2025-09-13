locals {
  remote_iam = data.terraform_remote_state.iam.outputs
}

data "terraform_remote_state" "iam" {
    backend = "s3"
    #config = merge(var.remote_state.iam.seeun-id)
    config = merge(var.remote_state.iam.seeun-id, {"assume_role" = {"role_arn" = var.assume_role_arn}})
}