variable "filename" {
  default = "/media/goku/985b1c56-53fe-43c7-b6b8-8be304595cd7/Downloads/Devops/TrainWithShubham/Free Terraform Course/practice/terraform-auto-generated.txt"
}

variable "content" {
  default = "this will generate text..."
}

#use `export TF_VAR_blank="any value you want to pass"` in cli 
variable "blank" {

}




#using map type here
#key value pair
variable "map" {
  type = map(any)
  default = {
    "content1" = "dfald;lfg1"
    "content2" = "gafdsagdfa2"
  }

}

#using list type here
#list of objects reference by index no starts from 0
variable "file_list" {
  type    = list(any)
  default = ["/media/goku/985b1c56-53fe-43c7-b6b8-8be304595cd7/Downloads/Devops/TrainWithShubham/Free Terraform Course/practice/list1.txt", "/media/goku/985b1c56-53fe-43c7-b6b8-8be304595cd7/Downloads/Devops/TrainWithShubham/Free Terraform Course/practice/list2.txt"]
}

#using object type here
#we can decide object type like string , number,etc

variable "aws_ec2_object" {
  type = object({
    name      = string
    instances = number
    keys      = list(string)
    ami       = string
  })
  default = {
    name      = "test_ec2_instance"
    instances = 4
    keys      = ["key1.pem", "key2.pem"]
    ami       = "ubuntu-ad3290"
  }
}

variable "name" {}
variable "instances" {}

locals {
  amazon_instance_names = toset(["Instance1", "Instance2", "Instance3"])
}
locals {
  amazon_instance_names_ami = { "amazon1_instance" : "ami-04a0ae173da5807d3", "ubuntu1_instance" : "ami-053b0d53c279acc90", "amazon2_instance" : "ami-04a0ae173da5807d3" }
}
locals {
  amazon_s3_buckets = toset(["s3Bucket1", "s3Bucket2", "s3Bucket3"])
}

variable "ec2_instances_map" {
  type = map
  default = {
    "content1" = "luffy"
    "content2" = "sanji"
    "content3" = "zoro"
  }

}
