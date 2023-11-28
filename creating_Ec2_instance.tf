provider "aws" {
    region = "us-east-1" 
#we have to provide the access key and security key
    access_key = "***************"
    secret_key = "**********************"
}
resource "aws_instance" "creating_ec2" {
#we have to select Ubuntu in the aws console, copy the AMI ID and enter the AMI ID here
ami           = "ami-**********"

#Instance type can be selected as per our requirements 
instance_type = "t2.micro"
  
 #we have to create a security group, copy that ID and enter it here 
  vpc_security_group_ids = ["sg-*********"]

  #If we have a key pair already created, here we should enter the keypair name
  key_name = "keytwo"
}


#we have to give the command "terraform plan" to see any changes that are required for your infrastructure

#"terraform apply"  command executes the actions proposed in a Terraform plan

#"terraform destroy" command terminates the Ec2 instance which we have created