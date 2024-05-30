resource "aws_instance" "app_server_2" {
   ami           = "ami-0f58b397bc5c1f2e8"
   instance_type = "t2.micro"

  #  count = 2

   associate_public_ip_address = "true"

   subnet_id     = aws_subnet.public_subnet_2.id
   security_groups = [aws_security_group.default_sg.id]
   
   user_data = <<-EOF
  #!/bin/bash
  echo "*** Installing apache2"
  sudo apt update -y
  sudo apt install apache2 -y
  echo "*** Completed Installing apache2"
  sudo systemctl start apache2
  echo "Starting apache2 server"
  EOF

   tags = {
       
    Name        = "${var.environment}-${var.instance_name}"
    Environment = "${var.environment}"
   }
 }