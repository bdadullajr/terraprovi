provider "aws" {
access_key = "AKIAJCOIN6UZO2ZTI56A"
secret_key = "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"
region = "ap-southeast-1"
}

resource "aws_instance" "web"{
ami = "ami-01da99628f381e50a"
instance_type = "t2.micro"
key_name = "${var.key_name}"
vpc_security_group_ids = ["${aws_security_group.web.id}"] subnet_id = "${aws_subnet.public-subnet-in-ap-southeast-1.id}"
associate_public_ip_address = true
source_dest_check = false

tags {
Name = "WEB01"
}
}

