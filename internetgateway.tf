resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.lamp_vpc.id
  tags = merge({
    Name = "ig-lemp-${terraform.workspace}"
  }, var.default_tags)
}
