resource "aws_subnet" "PublicSubnet1" {
   vpc_id     = aws_vpc.VPC.id
   cidr_block = "10.1.0.0/24"
   availability_zone = "us-west-2a"
   tags = {
       "Name" = "PublicSubnet1"
   }
}

resource "aws_subnet" "PrivateSubnet1" {
   vpc_id     = aws_vpc.VPC.id
   cidr_block = "10.1.1.0/24"
   availability_zone = "us-west-2a"
   tags = {
       "Name" = "PrivateSubnet1"
   }
}