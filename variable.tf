# variables.tf
variable "region" {
  default = "ap-south-1"
}
variable "availabilityZone" {
   type = "list"
   default = ["ap-south-1a", "ap-south-1b"] 
}
variable "instanceTenancy" {
  default = "default"
}

variable "dnsSupport" {
  default = true
}

variable "dnsHostNames" {
  default = true
}

variable "vpcCIDRblock" {
  default = "10.0.0.0/16"
}

variable "subnetCIDRblock" {
  type = "list"
  default = ["10.0.1.0/24", "10.0.2.0/24"]
 }

variable "destinationCIDRblock" {
  default = "0.0.0.0/0"
}

variable "ingressCIDRblock" {
  type    = "list"
  default = ["0.0.0.0/0"]
}

variable "mapPublicIP" {
  default = true
}

# end of variables.tf it is end git jenkins job



