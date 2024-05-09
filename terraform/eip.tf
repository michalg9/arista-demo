resource "aws_eip" "PublicIP" {
   network_interface = aws_network_interface.public.id
   vpc = true
   associate_with_private_ip = "10.1.0.10"
   depends_on = [aws_internet_gateway.InternetGateway, aws_network_interface.public]
}
