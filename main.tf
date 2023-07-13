provider "aws"{
	region = "us-east-1"
	access_key = "AKIAQK43TVDIIPEPPUWN"
	secret_key = "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"
}
resource "aws_instance" "k8s-Master" {
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.medium"
  key_name = "NVirKey"

  tags = {
    Name = "Machine-3"
  }
}

resource "aws_instance" "k8s-slave1" {
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"
  key_name = "NVirKey"

  tags = {
    Name = "Machine-2"
  }
}

resource "aws_instance" "k8s-slave2" {
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"
  key_name = "NVirKey"

  tags = {
    Name = "Machine-4"
  }
}


