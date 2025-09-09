provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "linux" {
  count         = 2
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 in us-east-1
  instance_type = "t3.micro"              # Free Tier eligible in us-east-1
  key_name      = "Jenkins"

  tags = {
    Name = "FreeTier-EC2-${count.index + 1}"
  }
}

