provider "aws" {
  region = "ca-central-1"
}

resource "aws_sqs_queue" "queue" {
  name  = "benoit_queue"
}
