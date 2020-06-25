terraform {
    backend "s3" {
        bucket = "s3-bb-terraform-state"
        key = "project.state"
        region = "ca-central-1"
    }
}
