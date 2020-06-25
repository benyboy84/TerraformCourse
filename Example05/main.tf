locals {
  name = "Benoit"
}

output "my_name" {
  value = "${local.name}"
}
