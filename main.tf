provider "aws" {
    region = "us-east-1"
    #selected virginia region 
    access_key = "AKIARLROB23Q4ORYL2PD"
    secret_key = "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"
}
resource "aws_instance" "myoner" {
  ami           = "ami-0fe8bec493a81c7da"
  instance_type = "t2.micro"
  #t2.micro is basic and only it can be used for free tier account 
}
