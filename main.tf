# Configure the AWS provider
provider "aws" {
  region = "ap-southeast-1"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-01938df366ac2d954"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0b03d46e315983c7f"
  tags = {
    Name = "my-ec2-instance"
  }
}
