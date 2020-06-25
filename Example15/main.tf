provider "aws" {
  region = "ca-central-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "benoitblais-${count.index}"
  count = 3
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "benoitblais-next-bucket"

  depends_on = [aws_s3_bucket.bucket]
}
