output "demo_vpc_id" {
  value = "${aws_vpc.demo_vpc.id}"
}

output "demo_app_server_public_id" {
  value = "${aws_instance.app_server.public_dns}"
}

