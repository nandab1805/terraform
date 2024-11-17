resource "aws_security_group" "roboshop-all" { #this is terraform name,for terraform
    name        = "dynamic-demo"
    description = "dynamic-demo"


    dynamic ingress {
        for_each = var.ingress_rules
        content {
            description       = ingress.value["description"]
            from_port         = ingress.value["from_port"]
            protocol          = ingress.value["protocol"]
            to_port           = ingress.value["to_port"]
            cidr_blocks       = ingress.value["cidr_blocks"]
        }
    }
    
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "dynamic-demo"
  }
}