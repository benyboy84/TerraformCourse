provider "aws" {
  region = "ca-central-1"
}

module "versioned_bucket" {
  source = "./s3"
  bucket_name = "benoitblais-versioned"
  versioning = true
}

module "normal_bucket" {
  source = "./s3"
  bucket_name = "benoitblais-normal"
  versioning = false
}


output "versioned_bucket_arn" {
  value = "${module.versioned_bucket.s3_bucket_arn}"
}

output "normal_bucket_arn" {
  value = "${module.normal_bucket.s3_bucket_arn}"
}
