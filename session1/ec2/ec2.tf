resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  tags = {
    Name = "Helloterraform"
  }
}

resource "aws_security_group" "roboshop-all" { #this is terraform name,for terraform
    name        = var.sg-name
    description = var.sg-description
    # vpc_id      = aws_vpc.main.id

    ingress {
        description       = "allow all ports"
        from_port         = var.inbound-from-port
        protocol          = "tcp"
        to_port           = 0
        cidr_blocks       = var.cidr_blocks
        # ipv6_cidr_blocks  =
    }
    
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
}