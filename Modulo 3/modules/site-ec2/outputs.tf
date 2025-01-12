output "vpc_id" {
  description = "value"
  value = aws_vpc.main.id
}

output "subnet_id" {
  description = "value"
  value = aws_subnet.main.id
}

output "instance_public_ip" {
  description = "value"
  value = aws_instance.main.public_ip
}