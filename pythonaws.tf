provider "aws" {
    region = "us-east-1" 
    access_key = "**************"
    secret_key = "***********************"
}
resource "aws_instance" "jupyterhub" {

#here we have to select Ubuntu and enter the AMI ID
ami           = "ami-*************"

#instance type t2.small or t2.medium could be better 
instance_type = "t2.micro"

#here in the security group we have to allow HTTP and HTTPS
  vpc_security_group_ids = [ "sg-***********" ]
  key_name = "key_name_here"
  
user_data = <<-EOF
                    #!/bin/bash
                    curl -L https://tljh.jupyter.org/bootstrap.py \
                    | sudo python3 - \
                    --admin name_here
                EOF
}
