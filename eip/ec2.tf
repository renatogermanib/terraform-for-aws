resource "aws_instance" "ec2-eip" {
  ami           = var.ami_type
  instance_type = var.instance_type
}