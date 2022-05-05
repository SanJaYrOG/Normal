provider "aws" {
    region = "me-south-1"
}

resource "aws_vpc" "main" {
    cidr_blokcidr_block = "10.0.0.0/16"  
}
 module "wills_webserver" {
   source = "git::ssh://SanJaYrOG@gmail.com/modules.git//modules/webserver?ref=main"
   vpc_id = aws_vpc.main.id 
   cidr_block = "10.0.0.0/16"
   webserver_name = "Will"
   ami = "ami-0b4946d7420c44be4"
   instance_type = "t2.medium"
 }
