output "instance_public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

output "instance_id" {
  value = aws_instance.ec2_instance.id
}