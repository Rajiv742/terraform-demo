# resource "aws_lb" "demo_loadbalancer" {
#   name               = "demo-lb-tf"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.default_sg.id]
#   subnets            = [for subnet in aws_subnet.public_subnet : subnet.id]

#   tags = {
#     Environment = "production"
#   }
# }