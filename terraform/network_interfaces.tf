resource "aws_network_interface" "public" {
   subnet_id       = aws_subnet.PublicSubnet1.id
   private_ips     = ["10.1.0.10"]
   security_groups = [aws_security_group.InternetSG.id]
}
resource "aws_network_interface" "private" {
   subnet_id       = aws_subnet.PrivateSubnet1.id
   private_ips     = ["10.1.1.10"]
   source_dest_check = false
   security_groups = [aws_security_group.OpenSG.id]
}
