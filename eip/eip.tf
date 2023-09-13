resource "aws_eip" "elasticip" {
  instance = aws_instance.ec2-eip.id # resource aws_instance with ec2-eip name -> extract id
}