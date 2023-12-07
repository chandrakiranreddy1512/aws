#here we created terraform.tfvars file where it contains the region , ami_id and instance type. 
#here we considered region , ami_id and instance type as variables
variable "region" {
  
}
variable "ami_id" {
    
}

variable "instance_type" {
    
}
provider "aws" {
##instead of entering region  , we just gave var.region
  region = var.region
  access_key = "****************"
  secret_key = "************"
}

resource "aws_instance" "variable_exampe" {
#instead of entering ami_id , we just gave var.ami_id 
    ami = var.ami_id
#instead of entering instance type , we just gave var.instance_type 
    instance_type = var.instance_type
    subnet_id = aws_subnet.var-subnet.id
}

#here new vpc(virtual private cloud ) wil be created.
resource "aws_vpc" "var_vpc" {
  cidr_block = "10.10.0.0/16"
}


#here new subnet will be created in that vpc
resource "aws_subnet" "var-subnet" {
#here we mentioned "aws_vpc.var_vpc.id" , it takes the newly created vpc (line number 29)
  vpc_id     = aws_vpc.var_vpc.id
  cidr_block = "10.10.1.0/24"
}