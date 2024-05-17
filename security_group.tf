/*==== VPC's Default Security Group ======*/
resource "aws_security_group" "default_sg" {
  name        = "${var.environment}-default-sg"
  description = "Default security group to allow inbound/outbound from the VPC"
  vpc_id      = "${aws_vpc.demo_vpc.id}"
  depends_on  = [aws_vpc.demo_vpc]
  ingress {
    from_port = "0"
    to_port   = "0"
    protocol  = "tcp"
    //self      = true
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    ingress {
    from_port = "80"
    to_port   = "80"
    protocol  = "tcp"
    //self      = true
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port = "0"
    to_port = "0"
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port = "80"
    to_port = "80"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port = "0"
    to_port   = "0"
    protocol  = "tcp"
    //self      = "true"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Environment = "${var.environment}"
    Name = "${var.environment}-default-sg"
  }
}