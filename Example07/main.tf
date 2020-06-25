provider "aws" {
    region = "ca-central-1"
}

provider "aws" {
    region = "us-east-1"
    alias = "us"
}

resource "aws_s3_bucket" "canada_bucket" {
    bucket = "benoitblais-canada"
}

resource "aws_s3_bucket" "us_bucket" {
    bucket = "benoitblais-us"
    provider = aws.us  
}
