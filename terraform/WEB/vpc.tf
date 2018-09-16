resource "aws_vpc" "default" {
cidr_block = "${var.vpc_cidr}"
enable_dns_hostnames = true
tags {
Name = "web"
}
}

resource "aws_subnet" "default" {
vpc_id = "${aws_vpc.default.id}"

cidr_block = "${var.web_subnet_cidr}"
availability_zone = "ap-southeast-1a"

tags {
Name = "web"
}
}

