# Terraform Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}

# Provider-1 for ap-south-1 (Default Provider)
provider "aws" {
  region = "ap-south-1"
  alias = "south-1"
  profile = "default"
}

# Provider-2 for eu-north-1
provider "aws" {
  region = "eu-north-1"
  alias = "north-1"
  profile = "default"
}

# Provider-3 for us-east-1
provider "aws" {
  region = "us-east-1"
  alias = "east-1"
  profile = "default"
}

# Create EC2 instances in ap-south-1
resource "aws_instance" "Mumbai" {
  provider = aws.south-1

  ami           = "ami-0e53db6fd757e38c7"  # Example AMI, replace with a valid one
  instance_type = "t2.micro"

  tags = {
    Name = "Mumbai"
  }
}

resource "aws_s3_bucket" "thiruba" {
  bucket = "thiruba"
  acl    = "private"

  tags = {
    Name        = "thiruba"
  }
}

