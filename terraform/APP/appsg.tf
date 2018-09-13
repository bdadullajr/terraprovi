resource "aws_security_group" "app" {
name = "vpc_app"
description = "Allows Port 22 to External only and All other Ports for Internal only"

egress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["${var.public_subnet_cidr}"] }

ingress {
protocol = "-1"
from_port = 0
to_port = 0
cidr_blocks = ["${var.private_subnet_cidr}"] }

vpc_id = "${aws_vpc.default.id}"

tags {
Name = "APP01_SG"
}
}
