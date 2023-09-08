provider "aws" {
    region = "us-east-1"
}

variable "vpc_name" {
    type = string
    default = "myvpc"
}

variable "ssh_port" {
    type = number
    default = 22
}

variable "enabled" {
    default = true
}

variable "mylist" {
    type = list(string)
    default = ["Value1","Value2","Value3"]
}

variable "mymap" {
    type = map
    default = {
        Key1 = "Value1"
        Key2 = "Value2"
    }
}

variable "inputname" {
    type = string
    description = "set the name of the vpc"
}

# create vpc
resource "aws_vpc" "my_vpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = var.inputname
    }
}

output "vpcid" {
  value = aws_vpc.my_vpc.id
}

variable "mytuple" {
  type = tuple([string, number, string])
  default = [ "cat", 1, "dog" ]
}

variable "myobject" {
  type = object({ name = string, port = list(number) })
  default = {
    name = "Test"
    port = [22, 25, 80]
  }
}