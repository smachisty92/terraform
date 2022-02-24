variable "sample" {}

variable "sample1" {
  default = "New World"
}

output "sample" {
  value = var.sample
}