provider "aws" {
  region = "us-east-1"  # Adjust the region as needed
}

resource "aws_instance" "new_ec2_instance" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.micro"

  # Optional: Add a key pair if you want to access the instance via SSH
  # key_name = "your_key_pair_name"

  # Optional: Add tags
  tags = {
    Name = "MyEC2Instance"
  }

  # Optional: Add a security group if needed
  # vpc_security_group_ids = ["sg-xxxxxxxx"]

  # Optional: Specify the subnet ID if deploying to a VPC
  # subnet_id = "subnet-xxxxxxxx"
}

# Outputs to display instance details after creation
output "instance_id" {
  value = aws_instance.new_ec2_instance.id
}

output "public_ip" {
  value = aws_instance.new_ec2_instance.public_ip
}
