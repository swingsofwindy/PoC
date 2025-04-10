# Cau hinh Provider AWS
provider "aws" {
  profile = "se400" 
  region  = var.region
}

# Tao cap khoa SSH
resource "aws_key_pair" "se400" {
  key_name   = "se400_key_pair"
  public_key = file("../.ssh/id_rsa.pub")
}

# Tao may chu EC2
resource "aws_instance" "se400" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.se400.key_name
  tags = {
    Name = var.instance_name
  }
}
