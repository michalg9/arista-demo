output "public-ip" {
  value = aws_eip.PublicIP.public_ip
}

output "host-ip" {
  value = aws_instance.CloudEOSHost.private_ip
}

output "host-id" {
  value = aws_instance.CloudEOSHost.id
}

output "cloudeos-id" {
  value = aws_instance.CloudEOS1.id
}
