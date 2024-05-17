resource "aws_subnet" "public_subnet" {
  //vpc_id     = aws_vpc.demo_vpc.id
  //cidr_block = "${var.public_subnet_cidr}"
  //availability_zone = "ap-south-1a"

   count      = length(var.public_subnet_cidr)
   vpc_id     = aws_vpc.demo_vpc.id
   cidr_block = element(var.public_subnet_cidr, count.index)
   availability_zone = "ap-south-1a"
 

  tags = {
    Name        = "${var.environment}-public-subnet"
    Environment = "${var.environment}"
  }
}