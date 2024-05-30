resource "aws_subnet" "public_subnet_2" {

  cidr_block = var.public_subnet_2_cidr
   vpc_id     = aws_vpc.demo_vpc.id
   availability_zone = "ap-south-1b"
   

  tags = {
    Name        = "${var.environment}-public-subnet-2"
    Environment = "${var.environment}"
  }
}