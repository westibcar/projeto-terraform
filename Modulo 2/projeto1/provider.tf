provider "aws" {
  region  = var.config[var.env].region
  profile = var.account
}