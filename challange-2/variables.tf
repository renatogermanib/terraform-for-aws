variable "aws_region" {
  description = "region for cloud provider"
  type        = string
}

variable "allocated_storage" {
  description = "gb for db instace"
  type        = number
}

variable "db_name" {
  description = "name for db"
  type        = string
}

variable "engine" {
  description = "engine of db"
  type        = string
}

variable "engine_version" {
  description = "version of db engine"
  type        = string
}

variable "instance_class" {
  description = "type of aws db instance"
  type        = string
}

variable "username" {
  description = "username for db"
  type        = string
}

variable "password" {
  description = "pass for db"
  type        = string
}
/*
variable "parameter_group_name" {
  description = "parameter group name"
  type        = string
}
*/
variable "skip_final_snapshot" {
  description = "skip final snapshot"
  type        = bool
}


variable "ami_id" {
  description = "ami id"
  type        = string
}

variable "instance_type" {
  description = "instance type"
  type        = string
}

variable "traffic_protocol" {
  description = "protocol for webtraffic"
  type        = string
}

variable "cidr_blocks" {
  description = "range of ip"
  type        = list(string)
}

variable "ingressrules" {
  description = "ingress rules for webserver traffic"
  type        = list(number)
}

variable "egressrules" {
  description = "egress rules for webserver traffic"
  type        = list(number)
}

variable "sg_name" {
  description = "name of security group"
  type        = string
}
/*
variable "snapshot_name" {
  description = "name for final snapshot identifier db"
  type = string
}
*/