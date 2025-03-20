terraform {
  backend "s3" {
    bucket         = "terraform-state-bucet"  
    key            = "terraform/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"   
  }
}

provider "aws" {
  region = "ap-south-1"
}
