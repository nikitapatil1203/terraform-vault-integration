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
      role_id   = "967392ce-1878-c958-b251-78828d7ca55a"
      secret_id = "a857182b-1cf0-d200-04a5-e38b34c3e774"
    }
  }
}


