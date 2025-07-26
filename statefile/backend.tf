terraform {
  backend "s3" {
    bucket         = "puras32025" 
    key            = "purna/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
