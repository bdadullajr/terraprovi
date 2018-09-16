resource "aws_key_pair" "db-ec2-key" {
  key_name   = "db-key"
  public_key = "${file("~/.ssh/app-ec2-key.pub")}"
}

