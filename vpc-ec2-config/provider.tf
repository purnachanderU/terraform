terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "v6.3.0"
    }
  }
}

provider "aws" {
  # Configuration 
  region = "us-east-1"
}
