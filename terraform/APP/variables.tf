### AWS Config ###

variable "aws_access_key" {
  default = "ACCESS_KEY_GOES_HERE"
}

variable "aws_secret_key" {
  default = "SECRET_KEY_GOES_HERE"
}

variable "aws_region" {
  default = "ap-southeast-1"
}

variable "vpc_cidr" {
description = "CIDR for VPC"
default     = "10.0.0.0/16"
}

variable "app_subnet_cidr" {
description = "CIDR for app subnet"
default     = "10.0.1.0/24"
}

