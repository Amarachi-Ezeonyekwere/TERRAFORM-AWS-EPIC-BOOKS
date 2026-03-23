terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.36.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"   # Change to your preferred region
  profile = "default"     # Your AWS CLI profile, "default" if you haven't set a custom one
}