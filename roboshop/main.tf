#module "frontend" {
#  source = "./frontend"
#}
#module "cart" {
#  source = "./cart"
#}
#module "catalogue" {
#  source = "./catalogue"
#}
#module "payment" {
#  source = "./payment"
#}
#module "shipping" {
#  source = "./shipping"
#}
##module "mysql" {
##  source = "./mysql"
##}
#module "mongodb" {
#  source = "./mongodb"
#}
#module "redis" {
#  source = "./redis"
#}
#module "rabbitmq" {
#  source = "./rabbitmq"
#}
#module "user" {
#  source = "./user"
#}

module "roboshop" {
  count = length(var.COMPONENTS)
  source = "./module"
  COMPONENT = var.COMPONENTS[count.index]
  PORT      = var.PORTS[count.index]
  MONITOR   = var.MONITOR[count.index]
}