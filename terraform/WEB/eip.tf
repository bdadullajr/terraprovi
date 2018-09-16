resource "aws_eip" "eip-web" {
  instance    = "${aws_instance.web.id}"
}
