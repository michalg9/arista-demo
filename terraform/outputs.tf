output "public-ip" {
  value = aws_eip.PublicIP.public_ip
}

output "host-ip" {
  value = aws_instance.CloudEOSHost.private_ip
}

output "host-id" {
  value = aws_instance.CloudEOSHost.id
}

output "router-id" {
  value = aws_instance.CloudEOSRouter.id
}
