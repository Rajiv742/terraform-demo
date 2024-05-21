resource "aws_subnet" "private_subnet" {

   count      = length(var.private_subnet_cidr)
   vpc_id     = aws_vpc.demo_vpc.id
   cidr_block = element(var.private_subnet_cidr, count.index)
   availability_zone = "ap-south-1b"
 

  tags = {
    Name        = "${var.environment}-private-subnet"
    Environment = "${var.environment}"
  }
}