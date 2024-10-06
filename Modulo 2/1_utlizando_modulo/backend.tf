terraform {
  backend "s3" {
    bucket  = "bucket-tfstate-uday-dev"
    key     = "dev/1_utlizando_modulo/terraform.tfstate"
    region  = "us-east-1"
    profile = "udayaccount"
  }
}