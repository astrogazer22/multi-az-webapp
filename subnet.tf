resource "aws_subnet" "pub_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.pub_a_cidr
  availability_zone = var.availability_zones_1

  tags = {
    Name = var.pub_a_name
  }
}

resource "aws_subnet" "pub_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.pub_b_cidr
  availability_zone = var.availability_zones_2

  tags = {
    Name = var.pub_b_name
  }
}

resource "aws_subnet" "pri_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.pri_a_cidr
  availability_zone = var.availability_zones_1

  tags = {
    Name = var.pri_a_name
  }
}

resource "aws_subnet" "pri_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.pri_b_cidr
  availability_zone = var.availability_zones_2

  tags = {
    Name = var.pri_b_name
  }
}