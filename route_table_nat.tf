resource "aws_route_table" "nat_gateway_route_table" {
  depends_on = [
    aws_nat_gateway.demo_nat_gateway
  ]

  vpc_id = aws_vpc.demo_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.demo_nat_gateway.id
  }

  tags = {
    Name = "Route Table for NAT Gateway"
  }

}