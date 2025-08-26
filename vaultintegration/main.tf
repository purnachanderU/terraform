provider "aws" {
  region = "eu-north-1"
}

provider "vault" {
  address = "http://13.62.45.21:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "9f8abea2-723d-6993-9db5-c3b65c8fd174"
      secret_id = "b814d0a9-142a-1a03-8018-d6c45ff533ff"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv"  
  name  = "test-secret"
}

resource "aws_instance" "terraform_vault" {
  ami           = "ami-0cf4242b6d0158bac"
  instance_type = "t3.micro"

  tags = {
    Secret = data.vault_kv_secret_v2.example.data["username"]
  }
}
