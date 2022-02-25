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
  ami           = "ami-0d997c5f64a74852c"
  spot_price    = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_app.id]

  tags = {
        Name = var.COMPONENT
  }
}