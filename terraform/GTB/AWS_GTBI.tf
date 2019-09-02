
resource "aws_instance" "central_console" {
    ami                    = ""
    instance_type          = "t2.medium"
    vpc_security_group_ids = ["${aws_security_group.central_console.id}"]
 }

 resource "aws_security_group" "central_console" {
  name        = "allowed_ports"
  description = "This port should be allowed"
  vpc_security_group_ids = ["gtb_ports"]
 }