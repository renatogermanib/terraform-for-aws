variable "ec2_name" {
  description = "name for ec2 instance modularized code"
  type = string
}

variable "ami_id" {
  description = "ami id"
  type        = string
}

variable "instance_type" {
  description = "instance type for modularized code"
  type        = string
}