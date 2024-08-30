provider "aws" {
  region = "us-west-2" // Replace with your desired region
}

module "s3_data_bucket" {
  source           = "git@github.com/rannaladasu/broccoli-module.git//modules/s3_bucket"
  resource_prefix  = "broccoli" // Replace with your desired prefix
tags = {}
}


module "route53" {
  source      = "git@github.com/rannaladasu/broccoli-module.git//modules/route53"
  domain_name = "broccoli"
  a_record_ip = "192.0.2.1"
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
