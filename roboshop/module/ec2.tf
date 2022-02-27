#resource "aws_instance" "ec2" {
#  ami           = "ami-0d997c5f64a74852c"
#  instance_type = "t3.micro"
#  vpc_security_group_ids = [aws_security_group.allow_app.id]
#
#  tags = {
#    Name = var.COMPONENT
#  }
#}


resource "aws_spot_instance_request" "cheap_worker" {
  ami           = "ami-0beb8dbee6d9265d4"
  instance_type    = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_app.id]
  wait_for_fulfillment = true

  tags = {
        Name = var.COMPONENT
  }
# remote-exec means connect to the local
#  provisioner "remote-exec" {
#    connection {
#      host = self.private_ip
#      user = "root"
#      password = "DevOps321"
#    }
#    inline = [
#      "ansible-pull -U https://github.com/smachisty92/ansible roboshop-pull.yml -e COMPONENT=${var.COMPONENT} -e ENV=dev"
#    ]
#  }
}

#this code is to add the instance name
resource "aws_ec2_tag" "aws_ec2_tag" {
  resource_id = aws_spot_instance_request.cheap_worker.spot_instance_id
  key         = "Name"
  value       = var.COMPONENT
}

resource "aws_ec2_tag" "aws_monitor_tag" {
  resource_id = aws_spot_instance_request.cheap_worker.spot_instance_id
  key         = "MONITOR"
  value       = var.MONITOR
}

#null_resource means nothing resource,
resource "null_resource" "ansible-apply" {
  depends_on = [aws_route53_record.www]
  triggers = {
    abc = timestamp()
  }
  provisioner "remote-exec" {
    connection {
      host     = aws_spot_instance_request.cheap_worker.private_ip
      user     = "root"
      password = "DevOps321"
    }
    inline = [
      "ansible-pull -U https://github.com/smachisty92/ansible roboshop-pull.yml -e COMPONENT=${var.COMPONENT} -e ENV=dev"
    ]
  }
}