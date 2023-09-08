# CREATE EC2 RESOURCE
resource "aws_instance" "ec2-instance" {
  ami = var.ami_id_instance
  instance_type = "t2.micro"

  tags = {
    Name = "Amazon linux 2 instance hvm"
  }

}