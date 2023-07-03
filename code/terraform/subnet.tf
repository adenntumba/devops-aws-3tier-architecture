resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.sub-public[count.index]
  availability_zone = var.availability_zone[count.index]
  count             = 2
  tags = {
    Name = "sub-public"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.sub-private[count.index]
  availability_zone = var.availability_zone[count.index]
  count             = 4
  tags = {
    Name = "sub-private"
  }
}