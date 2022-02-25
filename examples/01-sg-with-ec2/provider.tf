provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform62"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}