resource "aws_instance" "ubuntu" {
  key_name      = "awspractice"
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t2.micro"
  subnet_id     = "subnet-00ed53140cf2eb31d"
  tags = {
    Name = "myinstance-1"
  }
}
