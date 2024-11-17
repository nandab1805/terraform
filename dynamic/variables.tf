variable "ingress_rules" {
#   type = list
  default = [
    {
        description       = "allow  ports 80"
        from_port         = 80
        protocol          = "tcp"
        to_port           = 80
        cidr_blocks       = ["0.0.0.0/0"] 
    },
    {
        description       = "allow  ports 443"
        from_port         = 443
        protocol          = "tcp"
        to_port           = 443
        cidr_blocks       = ["0.0.0.0/0"] 
    },
    {
        description       = "allow  ports 22"
        from_port         = 22
        protocol          = "tcp"
        to_port           = 22
        cidr_blocks       = ["0.0.0.0/0"] 
    },
    {
        description       = "allow  ports 3306"
        from_port         = 3306
        protocol          = "tcp"
        to_port           = 3306
        cidr_blocks       = ["192.167.23.23/32"] 
    },

  ]
}