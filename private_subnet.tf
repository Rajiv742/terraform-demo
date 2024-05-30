resource "aws_subnet" "private_subnet" {

  cidr_block = var.private_subnet_cidr
   vpc_id     = aws_vpc.demo_vpc.id
   availability_zone = "ap-south-1b"
 

  tags = {
    Name        = "${var.environment}-private-subnet"
    Environment = "${var.environment}"
  }
}