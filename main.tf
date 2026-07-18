resource "null_resource" "marker" {}

output "sensitive_out" {
  value     = "KNOWN-SENSITIVE-BBHQ-98765"
  sensitive = true
}

output "plain_out" {
  value = "KNOWN-PLAIN-BBHQ-12345"
}
