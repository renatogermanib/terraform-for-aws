# CREATE VPC RESOURCE
resource "aws_vpc" "challange1-vpc" {
  cidr_block = var.ip_range
  
  tags = {
    Name = "challenge1-vpc"
  }

}