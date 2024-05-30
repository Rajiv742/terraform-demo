/*resource "aws_eip" "eip" {
  instance = aws_instance.app_server.id
  domain   = "vpc"
  depends_on                = [aws_internet_gateway.gw]
}*/