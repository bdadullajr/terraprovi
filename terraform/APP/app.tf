provider "aws" {
access_key = "AKIAJSNPB7G3AT6NKYGQ"
secret_key = "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"
region = "ap-southeast-1"
}

resource "aws_instance" "app"{
ami = "ami-01da99628f381e50a"
instance_type = "t2.micro"
key_name = "${var.key_name}"
vpc_security_group_ids = ["${aws_security_group.app.id}"] subnet_id = "${aws_subnet.public-subnet-in-ap-southeast-1.id}"
associate_public_ip_address = true
source_dest_check = false

tags {
Name = "APP01"
}
}
