#export AWS_ACCESS_KEY_ID=your_access_key_id_of_your_iam_user
#export AWS_SECRET_ACCESS_KEY=your_secret_access_key_of_your_iam_user

#export this in your awscli to access your awsconsole before terraform plan or apply 

#declare terraform related or required block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.16"
    }
  }
  required_version = ">=1.2.0"
}
#declare provider and configs
provider "aws" {
  region = "us-east-1"
}

#A local value assigns a name to an expression, so you can use the name multiple times within a module instead of repeating the expression.
locals {
  instance_names = toset(["goku", "gohan", "goten"])
}

resource "aws_instance" "ec2_instances" {
  count         = 3 #use to give number of instances that we want to create,however it can only create similar resources
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  #need to use tags to give name to our instance
  tags = {
    Name = "ec2_terraform-${count.index+1}"
    # Name1 = var.ec2_instances_map.content1
    # Name2 = var.ec2_instances_map.content2
    # Name3 = var.ec2_instances_map.content3

  }
}

resource "aws_instance" "ec2_instances_amazon" {
  for_each      = local.instance_names
  ami           = "ami-04a0ae173da5807d3"
  instance_type = "t2.micro"
  #need to use tags to give name of our instance
  tags = {
    Name = each.key
  }
}

resource "aws_instance" "ec2_instances_amazon1" {
  for_each      = local.amazon_instance_names
  ami           = "ami-04a0ae173da5807d3"
  instance_type = "t2.micro"
  #need to use tags to give name of our instance
  tags = {
    Name = each.value
  }
}

resource "aws_instance" "ec2_instances_user_define" {
  for_each      = local.amazon_instance_names_ami
  ami           = each.value
  instance_type = "t2.micro"
  #need to use tags to give name of our instance
  tags = {
    Name = each.key
  }
}
#To create ami instances we use map type

resource "aws_s3_bucket" "s3bucket" {
  for_each = local.amazon_s3_buckets
  # bucket = "s3_bucket"
  tags = {
    Name = each.value
    # Name = "s3tmp-bucket1"
    Environment = "dev"
  }
}

#use [*] this to print multiple ip addr of multiple instances
output "ec2_public_ip" {
  value = aws_instance.ec2_instances[*].public_ip
}

#or we can manually define them,however in case of n number of instances it is not great option

# output "ec2_public_ip1" {
#   value = aws_instance.ec2_instances[0].public_ip
# }
# output "ec2_public_ip2" {
#   value = aws_instance.ec2_instances[1].public_ip
# }
# output "ec2_public_ip3" {
#   value = aws_instance.ec2_instances[2].public_ip
# }
