resource "aws_security_group" "web" {
name = "vpc_web"
description = "Allows Ports, 22, 80 & 443"

egress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["${var.public_subnet_cidr}"] }

egress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["${var.public_subnet_cidr}"] }

egress {
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = ["${var.public_subnet_cidr}"] }

vpc_id = "${aws_vpc.default.id}"

tags {
Name = "WEB01_SG"
}
}
