provider "aws" {
  region = "ca-central-1"
}

locals {
  bucket_prefix = "blais-updated"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "${local.bucket_prefix}-first-bucket"
}
