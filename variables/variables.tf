# #preferences of variable taking i/p
# 1. command line
# 2. -var-file
# 3. terraform.tfvars
# 4. envinorment variables

variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "Hello Terraform"
        Project = "Roboshop"
        Envinorment = "Dev"
        Component = "Web"
        Terraform = "True"
        
        
    }  
}

variable "sg-name" {
  type = string
  default = "Roboshop-all"
}

variable "sg-description" {
    type = string
    default = "Allow all ports"
}

variable "inbound-from-port" {
  type = number
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}