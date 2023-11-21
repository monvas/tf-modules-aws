variable "ec2_count" {
  description = "Number of EC2 instances to create"
  default = 1
}

variable "ami" {
  description = "EC2 ami to be used. Amazon Linux is the default"
  default = "ami-0fe8bec493a81c7da"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "key pair to be used"
}

variable "security_groups" {
  description = "security groups to be used"
  default = []
}

variable "subnet_id" {
  default = "subnet-2a759743"
}