variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}

# variable "instance_names" {
#   type = list
#   default = ["mongodb","redis","mysql","rabbitmq","user","cart","catalogue","shipping","payment","dispatch","web"]
# }

variable "zone_id" {
  default = "Z0052926291UMF767L3HY"
}

variable "domain_name" {
  default = "nanda.cfd"
}

variable "isprod" {
  type = bool
  default = true
  
}