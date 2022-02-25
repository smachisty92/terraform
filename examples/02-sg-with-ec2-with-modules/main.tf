module "ec2" {
  source = "./ec2"
  SG_ID  = module.sg.SG_ID
}

module "sg" {
  source = "./sg"
}

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