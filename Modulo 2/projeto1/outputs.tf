output "vpc_id" {
  description = "ID da VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "ID da SUBNET"
  value       = aws_subnet.main.id
}

output "public_ip" {
  description = "IP publico do EC2"
  value       = aws_instance.main.public_ip
}

output "aws_security_group_id" {
  description = "ID do SG"
  value       = aws_security_group.main.id
}
