variable "vpc_cidr" {
  description = "Value of the vpc cidr for the EC2 instance"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Value of the vpc cidr for the EC2 instance"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "Value of the vpc cidr for the EC2 instance"
  type        = string
  default     = "10.0.2.0/24"
}
variable "private_subnet_cidr" {
  description = "Value of the vpc cidr for the EC2 instance"
  type        = list(string)
  default     = ["10.0.3.0/24"]
}

variable "environment" {
  description = "Value of the environment for the EC2 instance"
  type        = string
  default     = "dev"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "terraform-demo-instance"
}