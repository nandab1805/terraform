locals {
  name = "Nandakiran"
  training = "terraform"
  instance_type = var.isprod ? "t3.small" : "t2.micro"
}