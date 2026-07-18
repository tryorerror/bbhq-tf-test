variable "leaked_secret" {
  type    = string
  default = ""
}
variable "simple" {
  type    = string
  default = ""
}

resource "null_resource" "n" {
  triggers = {
    exact = var.simple
    fmt   = format("conn=%s", var.leaked_secret)
  }
}
