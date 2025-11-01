resource "aws_subnet" "private_subnet_1a" {
  vpc_id = aws_vpc.main.id

  cidr_block        = "10.0.0.0/20" // 4.096 IPs
  availability_zone = format("%sa", var.region)

  tags = {
    Name = format("%s-private-subnet-1a", var.project_name)
  }
}

resource "aws_subnet" "private_subnet_1b" {
  vpc_id = aws_vpc.main.id

  cidr_block        = "10.0.16.0/20" // 4.096 IPs
  availability_zone = format("%sa", var.region)

  tags = {
    Name = format("%s-private-subnet-1b", var.project_name)
  }
}

resource "aws_subnet" "private_subnet_1c" {
  vpc_id = aws_vpc.main.id

  cidr_block        = "10.0.32.0/20" // 4.096 IPs
  availability_zone = format("%sa", var.region)

  tags = {
    Name = format("%s-private-subnet-1c", var.project_name)
  }
}

# ROUTE TABLE
resource "aws_route_table" "private_internet_access_1a" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = format("%s-private-1a", var.project_name)
  }
}

resource "aws_route_table" "private_internet_access_1b" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = format("%s-private-1b", var.project_name)
  }
}

resource "aws_route_table" "private_internet_access_1c" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = format("%s-private-1c", var.project_name)
  }
}