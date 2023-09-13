resource "aws_instance" "vm_ec2" {
  ami = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "ec2 instance for modularized code"
  }
}