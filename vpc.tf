resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16" // 65.534 IPs

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = var.project_name
  }
}