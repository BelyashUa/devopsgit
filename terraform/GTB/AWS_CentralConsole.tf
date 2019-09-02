provider "aws" {
    access_key = ""
    secret_key = ""
    region = "us-west-1" 
    }

resource "aws_instance" "central_console" {
    ami                    = "ami-05e74d975ad2ccfb1"
    instance_type          = "t2.medium"  #2 CPU and 4 gb RAM
    vpc_security_group_ids = ["${aws_security_group.gtb_ports.id}"]
 }

 resource "aws_security_group" "gtb_ports" {
  name        = "allowed_ports"  # List of ports 
  description = "This port should be allowed"

  ingress {
    from_port   = 443            # Web Portal and agents connect to CC
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 17023          # For Fingerprinting
    to_port     = 17023
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 3128           # For Proxy
    to_port     = 3128
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 1122           # SSH access
    to_port     = 1122
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}