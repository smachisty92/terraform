module "roboshop" {
  source = "../module"
  COMPONENT = "redis"
  PORT      = 3679
  MONITOR   = "no"
}