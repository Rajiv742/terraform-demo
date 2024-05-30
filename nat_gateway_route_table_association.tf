
# Creating an Route Table Association of the NAT Gateway route 
# table with the Private Subnet!
resource "aws_route_table_association" "demo_nat_gateway_association" {
  depends_on = [
    aws_route_table.nat_gateway_route_table
  ]

#  Private Subnet ID for adding this route table to the DHCP server of Private subnet!
  subnet_id      = aws_subnet.private_subnet.id

# Route Table ID
  route_table_id = aws_route_table.nat_gateway_route_table.id
}