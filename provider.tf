terraform {
  backend "s3" {
    bucket = "terraform-intern-ecr"
    key    = "intern/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-intern-ecr-s3"
  }
}


# Define the required AWS provider version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}
# Configure the AWS provider with access credentials and region
provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

