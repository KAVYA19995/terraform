resource "aws_instance" "web" {
  ami             = "ami-051f8a213df8bc089"
  instance_type   = "t2.micro"
  key_name        = "mykeypair"
  security_groups = ["linux_sg"]
  count = 1

  tags = {
    Name = "kavyauser"
    Env  = "Production"
  }
}



