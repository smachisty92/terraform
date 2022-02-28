variable "COMP" {
  default = ["frontend","cart"]
  type = set(string)
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