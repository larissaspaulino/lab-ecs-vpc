resource "aws_subnet" "public_subnet_1a" {
  vpc_id = aws_vpc.main.id

  cidr_block        = "10.0.48.0/24" // 500 e poucos IPs
  availability_zone = format("%sa", var.region)

  tags = {
    Name = format("%s-public-subnet-1a", var.project_name)
  }
}

resource "aws_subnet" "public_subnet_1b" {
  vpc_id = aws_vpc.main.id

  cidr_block        = "10.0.49.0/24"
  availability_zone = format("%sa", var.region)

  tags = {
    Name = format("%s-public-subnet-1b", var.project_name)
  }
}

resource "aws_subnet" "public_subnet_1c" {
  vpc_id = aws_vpc.main.id

  cidr_block        = "10.0.50.0/24"
  availability_zone = format("%sa", var.region)

  tags = {
    Name = format("%s-public-subnet-1c", var.project_name)
  }
}


# ROUTE TABLE
resource "aws_route_table" "public_internet_access" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = format("%s-public", var.project_name)
  }
}

resource "aws_route" "public_access" {
  route_table_id         = aws_route_table.public_internet_access.id
  destination_cidr_block = "0.0.0.0/0" // todo tráfego de saída, que não fizer parte do range da VPC, manda para o IGW
  gateway_id             = aws_internet_gateway.gw.id
}
