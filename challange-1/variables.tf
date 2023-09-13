# VARIABLE DECLARATIONS
variable "provider_zone" {
  description = "zone for cloud provider"
  type = string
}

variable "ip_range" {
  description = "cidr range for vpc of interest"
  type = string
}

variable "ami_id_instance" {
  description = "ami id for launch ec2 instances"
  type = string
}