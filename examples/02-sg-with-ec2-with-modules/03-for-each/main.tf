variable "COMP" {
  default = ["frontend","cart"]
}

resource "null_resource" "null" {
  for_each = var.COMP
  triggers = {
    abc = timestamp()
  }
  provisioner "local-exec" {
    command= "Component Name = ${each.value}"
  }
}