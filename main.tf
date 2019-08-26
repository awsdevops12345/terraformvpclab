 provider "aws" {
   region   = "us-east-1"
  }
  resource "aws_vpc" "main" {
    cidr_block = "192.160.0.0/16"
    instance_tenancy = "default"

    tags {
        Name = "main"
        Location = "Bangalore"
      }
    }  
    
    resource "aws_subnet" "subnet1" {
      vpc_id = "${aws_vpc.main.id}"
      cidr_block = "192.160.1.0/24"

      tags {
        Name = "subnet1"
       }
    }

resource "aws_subnet" "subnet2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "192.160.2.0/24"

  tags = {
    Name = "subnet2"
  }
}
resource "aws_subnet" "subnet3" {
 vpc_id = "${aws_vpc.main.id}"
 cidr_block = "192.160.3.0/24"

 tags = {
  Name = "subnet3"

}
}


