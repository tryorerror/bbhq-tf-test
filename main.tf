variable "leaked_secret" {
  type    = string
  default = ""
}

resource "null_resource" "leak" {
  triggers = {
    exact  = var.leaked_secret
    b64    = base64encode(var.leaked_secret)
    concat = "PFX-${var.leaked_secret}-SFX"
    rev    = join("", reverse(split("", var.leaked_secret)))
    lenval = "LEN-${length(var.leaked_secret)}"
  }
}
