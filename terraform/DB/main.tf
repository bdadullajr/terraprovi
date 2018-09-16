resource "aws_instance" "db"{
ami = "AMI_GOES_HERE"
instance_type = "t2.micro"
source_dest_check = true
key_name = "${aws_key_pair.db-ec2-key.key_name}"

security_groups = [
    "${aws_security_group.allow_db_ssh.name}",
    "${aws_security_group.allow_db.name}"
]

tags {
Name = "DB01"
}
}

