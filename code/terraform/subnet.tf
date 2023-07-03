resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.16.10.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "sub-public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.16.20.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "sub-private"
  }
}