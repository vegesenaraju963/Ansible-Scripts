resource "aws_instance" "master" {
  ami           = "ami-0affd4508a5d2481b"
  instance_type = "t2.micro"
  key_name = "lab"
  vpc_security_group_ids = ["sg-0ba63e7078eb46de6"]
  user_data = "script.sh"
  tags = {
    Name = "Ansible master"
  }
}