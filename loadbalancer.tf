resource "aws_lb" "demo_loadbalancer" {
  name               = "demo-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.default_sg.id]
  subnets = [aws_subnet.public_subnet.id, aws_subnet.public_subnet_2.id]
                        

  tags = {
      Environment = "${var.environment}"
      Name = "${var.environment}-loadbalancer-public"
  }
}