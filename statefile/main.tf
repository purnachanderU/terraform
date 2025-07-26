rovider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "abhishek" {
  instance_type = "t2.micro"
  ami = "ami-0ddddd6789abcde30" # change this
  subnet_id = "subnet-019ea91ed9b5252e7"  
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "puras32025" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
