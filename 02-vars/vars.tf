variable "sample" {}

variable "sample1" {
  default = "New World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}