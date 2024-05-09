resource "aws_route_table" "PublicRouteTable" {
   vpc_id = aws_vpc.VPC.id
   tags = {
       "Name" = "PublicRT"
   }
}
resource "aws_route_table" "PrivateRouteTable" {
   vpc_id = aws_vpc.VPC.id
   tags = {
       "Name" = "PrivateRT"
   }
}

resource "aws_route" "PublicDefault" {
   route_table_id = aws_route_table.PublicRouteTable.id
   destination_cidr_block = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.InternetGateway.id
}
resource "aws_route" "PrivateDefault" {
   route_table_id = aws_route_table.PrivateRouteTable.id
   destination_cidr_block = "0.0.0.0/0"
   network_interface_id = aws_network_interface.private.id
}

resource "aws_route_table_association" "route_assoc_public" {
 route_table_id = aws_route_table.PublicRouteTable.id
 subnet_id      = aws_subnet.PublicSubnet1.id
}
resource "aws_route_table_association" "route_assoc_private" {
 route_table_id = aws_route_table.PrivateRouteTable.id
 subnet_id      = aws_subnet.PrivateSubnet1.id
}
