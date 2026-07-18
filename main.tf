variable "leaked_secret" {
  type    = string
  default = ""
}

resource "null_resource" "leak" {
  triggers = {
    s = var.leaked_secret
  }
}

output "plain_out" {
  value = "marker-777"
}
