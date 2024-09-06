terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.65.0"
    }
  }
}

provider "aws" {
  region = "us-west-2" // Replace with your desired region
}

module "s3_data_bucket" {
  source           = "git@github.com:YPRIYANKA0007/modules.git"
  resource_prefix  = "modules" // Replace with your desired prefix
tags = {}
}



# resource "aws_s3_bucket" "data" {
#   # bucket is public
#   # bucket is not encrypted
#   # bucket does not have access logs
#   # bucket does not have versioning
#   bucket        = "${local.resource_prefix.value}-data"
#   region        = "us-west-2"
#   acl           = "public-read"
#   force_destroy = false
#   tags = {
#     Name        = "${local.resource_prefix.value}-data"
#     Environment = local.resource_prefix.value
#   }
# }
