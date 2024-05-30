resource "aws_route_table" "demo_route" {
  vpc_id = aws_vpc.demo_vpc.id
  

  route {
    //cidr_block = "${aws_subnet.public_subnet.cidr_block}"
    //cidr_block = "10.0.1.0/24"
    cidr_block = "0.0.0.0/0"
    
    gateway_id = aws_internet_gateway.gw.id
    //network_interface_id = aws_network_interface.eni.id
  }

  tags = {
    Name        = "${var.environment}-route-table"
    Environment = "${var.environment}"
  }
}

# resource "aws_network_interface" "eni" {
#   subnet_id = aws_subnet.public_subnet.id
# }

resource "aws_route_table_association" "route_table_association" {
  //subnet_id      = aws_subnet.public_subnet.id
  //route_table_id = aws_route_table.demo_route.id
  //gateway_id = aws_internet_gateway.gw.id
  //depends_on = [ aws_route_table.demo_route ]
  
   count = length(var.public_subnet_cidr)
   subnet_id      = element(aws_subnet.public_subnet[*].id, count.index)
   route_table_id = aws_route_table.demo_route.id
}