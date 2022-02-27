variable "list" {
  default = [1,2,3]
}

output "number_of_list" {
  value = length(var.list)
}

#we can use below way to get the value
output "get_first_value_1" {
  value = var.list[0]
}

#or we can use function as element to get the value
output "get_first_value_2" {
  value = element(var.list, 0)
}