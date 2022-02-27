#currently having issue with mysql


variable "COMPONENTS" {
  default = ["cart", "catalogue", "frontend", "mongodb", "payment", "rabbitmq", "redis", "shipping", "user"]
}

variable "PORTS" {
  default = [8080,8080,80, 27017, 8080,5672, 6379, 8080, 808]
}

variable "MONITOR" {
  default = ["yes", "yes", "yes", "no", "no", "yes", "no", "no", "yes", "yes"]
}