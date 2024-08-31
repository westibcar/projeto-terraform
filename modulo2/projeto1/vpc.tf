resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = merge(
    local.tags_comuns,
    {
      Name = "vpc-${var.env}"
    }
  )
}