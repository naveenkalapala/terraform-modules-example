resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "${var.env}_vpc"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "${var.env}_igw"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "${var.env}_subnet"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = var.route_table_cidr
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.env}_route_table"
  }
}

resource "aws_route_table_association" "this" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.rt.id
}