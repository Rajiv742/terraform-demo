# Creating an Elastic IP for the NAT Gateway!
resource "aws_eip" "eip_nat_gateway" {
#   depends_on = [
#     aws_route_table_association.demo_nat_gateway_association
#   ]
#   vpc = true
}