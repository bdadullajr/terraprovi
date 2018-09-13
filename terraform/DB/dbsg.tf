resource "aws_security_group" "db" {
name = "vpc_db"
description = "Allows Port 22 to External only and 3306 for Internal only"

egress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["${var.public_subnet_cidr}"] }

ingress {
from_port = 3306 
to_port = 3306
protocol = "tcp"
cidr_blocks = ["${var.private_subnet_cidr}"] }

vpc_id = "${aws_vpc.default.id}"

tags {
Name = "DB01_SG"
}
}
