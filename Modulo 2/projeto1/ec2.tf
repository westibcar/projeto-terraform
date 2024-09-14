resource "aws_instance" "main" {
  ami           = var.config[var.env].ami_id
  instance_type = var.config[var.env].instance_type
  subnet_id     = aws_subnet.main.id
  key_name      = var.config[var.env].key_pair

  vpc_security_group_ids = [aws_security_group.main.id]

  tags = merge(
    local.tags_comuns,
  {
    Name = "ec2-${var.env}"
  })
  

  user_data = <<-EOF
            #!/bin/bash
            yum update -y
            yum install -y httpd
            sudo systemctl enable --now httpd
            echo "<center><h1> Bem-vindo a Uday Academy!</h1></center>" > /var/www/html/index.html
           EOF
}


