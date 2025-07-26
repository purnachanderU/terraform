provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "example" {
    ami           = "ami-045occdddddidddc"  
    instance_type = "t2.micro"
}
