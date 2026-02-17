resource "aws_instance" "ubuntu" {
  key_name      = var.key_name
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  tags = {
    Name = "myinstance-1"
  }
}
