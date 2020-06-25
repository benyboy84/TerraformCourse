provider "aws" {
  region = "ca-central-1"
}

data "aws_s3_bucket" "my_bucket" {
  bucket = "benoitblais-bucketalready-here"
}

resource "aws_iam_policy" "my_bucket_policy" {
  name = "my-bucket-policy"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "${data.aws_s3_bucket.my_bucket.arn}"
      ]
    }
  ]
}
POLICY
}
