provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"  # Replace with the appropriate AWS AMI ID
  instance_type = var.instance_type

  tags = {
    Name = "ExampleInstance"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
  description = "Public IP of the EC2 instance"
}
