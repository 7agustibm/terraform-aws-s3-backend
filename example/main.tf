provider "aws" {
  region = "eu-west-1"
}

# terraform {
#   backend "s3" {
#     encrypt = "true"
#     bucket = "terraform"
#     key = "terraform.tfstate"
#     region = "eu-west-1"
#   }
# }

module "s3-backend" {
  source  = "7agustibm/s3-backend/aws"
  version = "1.0.0"
  bucket_name = "terraform"
  region = "eu-west-1"
}
