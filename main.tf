provider "aws" {
    region = "us-east-1"
    #selected virginia region 
    access_key = "your_acces_key"
    secret_key = "you_secret_key"
}
resource "aws_instance" "myoner" {
  ami           = "ami-*******"
  instance_type = "t2.micro"
  #t2.micro is basic and only it can be used for free tier account 
}
