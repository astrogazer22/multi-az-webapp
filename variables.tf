variable "aws_region_1" {
  type    = string
  default = "us-east-1"
}

variable "aws_region_2" {
  type    = string
  default = "us-west-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "availability_zones_1" {
  type    = string
  default = "us-east-1a"
}

variable "availability_zones_2" {
  type    = string
  default = "us-east-1b"
}

variable "ami" {
  type    = string
  default = "ami-08a6efd148b1f7504"
}

variable "max_size" {
  type    = number
  default = 2
}

variable "min_size" {
  type    = number
  default = 1
}

variable "desired_capacity" {
  type    = number
  default = 1
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "pub_a_cidr" {
  type    = string
  default = "10.0.0.0/24"
}

variable "pub_b_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "pri_a_cidr" {
  type    = string
  default = "10.0.10.0/24"
}

variable "pri_b_cidr" {
  type    = string
  default = "10.0.11.0/24"
}


variable "db_instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "db_identifier" {
  type    = string
  default = "webapp-db"
}

variable "db_engine" {
  type    = string
  default = "mysql"
}

variable "db_username" {
  type    = string
  default = "admin"
}

variable "db_password" {
  type    = string
  default = "admin"
}

variable "aws_s3_bucket" {
  type    = string
  default = "rds-web-logs-1234"
}

variable "pub_a_name" {
  type    = string
  default = "public_subnet_a"
}

variable "pub_b_name" {
  type    = string
  default = "public_subnet_b"
}

variable "pri_a_name" {
  type    = string
  default = "private_subnet_a"
}

variable "pri_b_name" {
  type    = string
  default = "private_subnet_b"
}

variable "port_22" {
  type    = number
  default = 22
}

variable "port_80" {
  type    = number
  default = 80
}

variable "port_3306" {
  type    = number
  default = 3306
}

variable "null" {
  type    = number
  default = 0
}

variable "protocol_tcp" {
  type    = string
  default = "tcp"
}

variable "protocol_all" {
  type    = number
  default = -1
}

variable "cidr_block_all" {
  type    = string
  default = "0.0.0.0/0"
}

variable "cidr_ipv6" {
  type    = string
  default = "::/0"
}

