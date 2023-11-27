provider "aws" {
    region = "us-east-1" 
    access_key = "AKIARLROB23QTXVMNTGM"
    secret_key = "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"
}
resource "aws_instance" "juppyto" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-05fa22e3aa057142e" ]
  key_name = "keytwo"
  user_data = <<-EOF
                    #!/bin/bash
                    curl -L https://tljh.jupyter.org/bootstrap.py \
                    | sudo python3 - \
                    --admin chandra
                EOF
}
