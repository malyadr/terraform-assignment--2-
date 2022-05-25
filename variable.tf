variable "ami" {
    description  = "AMI for aws EC2 instance" 
    default =  "ami-072e5e320f8e18e83"
}

variable "instance_type" {
    description  = "type for aws EC2 instance"
    default  = "t2.micro"
}

variable "cidr_vpc" {
   description = "CIDR block for the VPC"
   default     = "10.0.0.0/16"
}

variable "environment_tag" {
   description = "tag"
   default = "zemoso" 
}

