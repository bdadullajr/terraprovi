resource "aws_instance" "web"{
ami = "AMI_GOES_HERE"
instance_type = "t2.micro"
source_dest_check = true
key_name = "${aws_key_pair.web-ec2-key.key_name}"

security_groups = [
    "${aws_security_group.allow_web_ssh.name}",
    "${aws_security_group.allow_web.name}",
    "${aws_security_group.allow_ssl.name}"
]

tags {
Name = "WEB01"
}
}

