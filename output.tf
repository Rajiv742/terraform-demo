output "demo_vpc_id" {
  value = "${aws_vpc.demo_vpc.id}"
}

output "demo_app_server_public_id" {
  value = "${aws_instance.app_server.public_dns}"
}

output "demo_app_server_2_public_id" {
  value = "${aws_instance.app_server_2.public_dns}"
}

#DNS of LoadBalancer
# output "lb_dns_name" {
#   description = "DNS of Load balancer"
#   value       = aws_lb.demo_loadbalancer.dns_name
# }

