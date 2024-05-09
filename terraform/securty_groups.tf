
resource "aws_security_group" "OpenSG" {
   vpc_id = aws_vpc.VPC.id
   ingress {
       description = "Allow Any"
       from_port = 0
       to_port   = 0
       protocol  = -1
       cidr_blocks = ["0.0.0.0/0"]
   }
   egress {
       description = "Allow Any"
       from_port = 0
       to_port   = 0
       protocol  = -1
       cidr_blocks = ["0.0.0.0/0"]
   }
}
resource "aws_security_group" "InternetSG" {
   vpc_id = aws_vpc.VPC.id
   ingress {
       description = "Allow SSH"
       from_port = 22
       to_port   = 22
       protocol  = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
   }
   ingress {
       description = "Allow ICMP"
       from_port = -1
       to_port = -1
       protocol = "icmp"
       cidr_blocks = ["0.0.0.0/0"]
   }
   egress {
       description = "Allow Any"
       from_port = 0
       to_port   = 0
       protocol  = -1
       cidr_blocks = ["0.0.0.0/0"]
   }
}
