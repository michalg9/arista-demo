resource "aws_instance" "CloudEOS1" {
   ami = "ami-0e11d250674a8dcc9"
   instance_type = "c5.xlarge"
   availability_zone = "us-west-2a"
   key_name = "test-west-2"
   network_interface {
       device_index = 0
       network_interface_id = aws_network_interface.public.id
   }
   network_interface {
       device_index = 1
       network_interface_id = aws_network_interface.private.id
   }  
   user_data = file("bootstrap.cfg")
   tags = {
       "Name" = "CloudEOS1"
   }
}

resource "aws_instance" "CloudEOSHost" {
   ami = "ami-0e11d250674a8dcc9"
   instance_type = "c5.xlarge"
   availability_zone = "us-west-2a"
   key_name = "test-west-2"
   subnet_id = aws_subnet.PrivateSubnet1.id
   vpc_security_group_ids = [aws_security_group.OpenSG.id]
   user_data = file("bootstraphost.cfg")
   tags = {
       "Name" = "CloudEOS-Host"
   }
}
