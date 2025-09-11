module "terraform_runner" {
  source               = "../_modules/terraform-runner-role"
  principal_account_id = var.account_id.id
  account_id           = var.account_id.id
}