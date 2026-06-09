terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  alias  = "us-east-region"
  region = "us-east-1"
}


provider "vault" {
  address          = "http://3.236.210.73:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id   = " add role id"
      secret_id = " add secret id"
    }
  }
}


