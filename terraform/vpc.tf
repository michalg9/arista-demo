resource "aws_vpc" "VPC" {
   cidr_block = "10.1.0.0/16"
   tags = {
       "Name" = "Terraform-VPC"
   }
}
