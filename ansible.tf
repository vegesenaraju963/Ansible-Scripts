resource "aws_instance" "master" {
  ami           = "ami-0affd4508a5d2481b"
  instance_type = "t2.micro"
  key_name = "lab"
  vpc_security_group_ids = ["sg-05393d12adc992534"]
  user_data = file("script.sh")
  tags = {
    Name = "Ansible master"
  }
}
