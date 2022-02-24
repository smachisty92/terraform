resource "aws_instance" "web" {
  ami           = "ami-0d997c5f64a74852c"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "web"
  }
}