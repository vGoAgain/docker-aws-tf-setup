variable "aws_region" {
  default = "eu-west-3"
}

variable "instance_type" {
  default = "t3.small"
}

variable "my_ip" {
  description = "Your public IP for SSH access"
  type        = string
}
