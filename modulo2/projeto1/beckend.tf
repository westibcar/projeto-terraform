terraform {
  backend "s3" {
    bucket  = "bucket-tfstate-uday-dev"
    key     = "dev/projeto1/terraform.tfstate"
    region  = "us-east-1"
    profile = "udayaccount"
  }
}