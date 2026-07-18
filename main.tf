variable "leaked_secret" { type = string, default = "" }
resource "null_resource" "n" {
  triggers = {
    json = jsonencode({ password = var.leaked_secret })
    yaml = yamlencode({ password = var.leaked_secret })
    fmt  = format("conn=%s", var.leaked_secret)
    b64  = base64encode(var.leaked_secret)
  }
}
