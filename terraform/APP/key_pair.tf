resource "aws_key_pair" "app-ec2-key" {
  key_name   = "app-key"
  public_key = "${file("~/.ssh/app-ec2-key.pub")}"
}

