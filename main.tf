resource "aws_instance" "assignement2" {
   ami =  var.ami
   instance_type = var.instance_type
   tags = {
     Environment = var.environment_tag
   }
  key_name   = aws_key_pair.web.id         
}
 resource "aws_vpc" "vpc" {
      cidr_block =  var.cidr_vpc
      tags = {
        Environment = var.environment_tag
      }
 }
 resource "aws_key_pair" "web" {
     public_key = file ("/home/malyadm/.ssh/id_rsa.pub")
 } 

output publicip {
     value      = aws_instance.assignement2.public_ip
 }