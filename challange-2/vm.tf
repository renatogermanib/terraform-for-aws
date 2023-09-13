resource "aws_instance" "webserver" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.sg_webserver.name]
  user_data       = file("../server-script.sh")
  tags = {
    Name = "webpage server"
  }
}

resource "aws_eip" "elasticip" {
  instance = aws_instance.webserver.id #assign elasticip to ec2 instance 
}