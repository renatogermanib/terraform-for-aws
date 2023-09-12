resource "aws_instance" "vm_sg" {
  ami           = var.ami
  instance_type = var.instance_type
  security_groups = [aws_security_group.web_traffic.name]
}