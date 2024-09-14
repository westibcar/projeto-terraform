terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "bucket-tfstate-uday-dev"
    key    = "dev/import_bucket_s3/terraform.tfstate"
    region = "us-east-1"
    profile = "udayaccount"
  }
}

provider "aws" {
  region  = var.region
  profile = var.account
}
