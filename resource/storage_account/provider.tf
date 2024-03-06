terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.39.1"
    }
  }
  backend "s3" {
    bucket = "rjnstorage0019"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}



provider "aws" {
  region = "us-east-1"
}

