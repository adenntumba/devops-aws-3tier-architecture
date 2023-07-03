terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                   = "us-east-1"
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "adinn"
}

terraform {
  backend "s3" {
    bucket  = "bucket-my-terraform"
    key     = "state/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}