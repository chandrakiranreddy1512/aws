provider "aws" {
    region = "us-east-1"
    access_key = "AKIARLROB23Q4ORYL2PD"
    secret_key = "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"
}
resource "aws_instance" "chandraone" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
}
