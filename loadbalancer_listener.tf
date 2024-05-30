// Listener
resource "aws_lb_listener" "my_alb_listener" {
 load_balancer_arn = aws_lb.demo_loadbalancer.arn
 port              = "80"
 protocol          = "HTTP"

 default_action {
   type             = "forward"
   target_group_arn = aws_lb_target_group.lb_tg_a.arn
 }
}