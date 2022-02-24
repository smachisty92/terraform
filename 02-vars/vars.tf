variable "sample" {}

variable "sample1" {
  default = "New World"
}

variable "sample2" {
  default = "New World"
}

variable "sample3" {
  default = 100
}

variable "sample4" {
  default = true
}

variable "list" {
  default = ["hello", 100, true, "chisty"]
}

variable "map" {
  default = {
    string = "hello",
    number = 100,
    boolean = true
    }
}

#this is for tfvars
variable "new" {}

#this is for cli
variable "cli" {}

variable "shell" {}