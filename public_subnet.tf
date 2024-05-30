resource "aws_subnet" "public_subnet" {
  cidr_block = var.public_subnet_cidr
  
   //count      = length(var.public_subnet_cidr)
   vpc_id     = aws_vpc.demo_vpc.id
   //cidr_block = element(var.public_subnet_cidr, count.index)
   availability_zone = "ap-south-1a"
 

  tags = {
    Name        = "${var.environment}-public-subnet"
    Environment = "${var.environment}"
  }
}