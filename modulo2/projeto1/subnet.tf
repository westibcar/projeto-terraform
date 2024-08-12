resource "aws_subnet" "main" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = "${var.config[var.env].region}a"

  tags = {
    Name = "subnet-${var.env}"
  }
}