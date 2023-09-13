variable "provider_region" {
  description = "region for cloud provider"
  type        = string
}

variable "ami" {
  description = "ami id for vm"
  type                = string
}

variable "instance_type" {
  description = "type of virtual machine"
  type        = string
}

variable "sg_name" {
  description = "name for security group"
  type        = string
}