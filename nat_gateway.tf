# Creating a NAT Gateway!
resource "aws_nat_gateway" "demo_nat_gateway" {
  
  allocation_id = aws_eip.eip_nat_gateway.id

  # Associating it in the Public Subnet!
  subnet_id = aws_subnet.public_subnet.id
  
  
  tags = {
    Name = "Demo_Nat-Gateway"
  }
}