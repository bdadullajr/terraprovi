resource "aws_instance" "app"{
ami = "AMI_GOES_HERE"
instance_type = "t2.micro"
source_dest_check = true
key_name = "${aws_key_pair.app-ec2-key.key_name}"

security_groups = [
    "${aws_security_group.allow_ssh.name}",
    "${aws_security_group.allow_outbound.name}"
]

tags {
Name = "APP01"
}
}



