resource "aws_lb_target_group" "lb_tg_a" { // Target Group A
 name     = "target-group-a"
 port     = 80
 protocol = "HTTP"
 vpc_id   = aws_vpc.demo_vpc.id
}

// Target group attachment
resource "aws_lb_target_group_attachment" "tg_attachment_a" {
 target_group_arn = aws_lb_target_group.lb_tg_a.arn
 target_id        = aws_instance.app_server.id
 port             = 80
   depends_on = [
    aws_lb_target_group.lb_tg_a,
    aws_instance.app_server,
  ]
}

// Target group attachment
resource "aws_lb_target_group_attachment" "tg_attachment_b" {
 target_group_arn = aws_lb_target_group.lb_tg_a.arn
 target_id        = aws_instance.app_server_2.id
 port             = 80
    depends_on = [
    aws_lb_target_group.lb_tg_a,
    aws_instance.app_server_2,
  ]
}