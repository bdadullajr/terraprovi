variable "key_path" {
description = "Key path for SSHing into EC2"
default  = "/root/terraform/ssh/practice-key.pem"
}

variable "key_name" {
description = "Key name for SSHing into EC2"
default = "practice-key"
}

variable "public_subnet_cidr" {
description = "CIDR for public subnet"
default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
description = "CIDR for private subnet"
default     = "10.0.2.0/24"
}

variable "vpc_cidr" {
description = "CIDR for VPC"
default     = "10.0.0.0/16"
}



