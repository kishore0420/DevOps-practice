variable "ami_id" {
  description = "ami id to create ec2 instance."
  type        = string
  default     = "ami-0b6c6ebed2801a5cb"
}

variable "instance_type" {
  description = "instance type to create ec2 instance."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "key name to create ec2 instance."
  type        = string
  default     = "awspractice"
}

variable "subnet_id" {
  description = "subnet id to create ec2 instance."
  type        = string
  default     = "subnet-00ed53140cf2eb31d"
}