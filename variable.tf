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
  type = map
  default = {
    "content1" = "dfald;lfg1"
    "content2" = "gafdsagdfa2"
  }
  
}

#using list type here
#list of objects reference by index no starts from 0
variable "file_list" {
  type = list
  default=["/media/goku/985b1c56-53fe-43c7-b6b8-8be304595cd7/Downloads/Devops/TrainWithShubham/Free Terraform Course/practice/list1.txt","/media/goku/985b1c56-53fe-43c7-b6b8-8be304595cd7/Downloads/Devops/TrainWithShubham/Free Terraform Course/practice/list2.txt"]
}

#using object type here
#we can decide object type like string , number,etc

variable "aws_ec2_object" {
  type = object({
    name = string
    instances = number
    keys = list(string)
    ami = string
  })
  default = {
    name = "test_ec2_instance"
    instances = 4
    keys = ["key1.pem","key2.pem"]
    ami = "ubuntu-ad3290"
  }
}

variable "name" {}
variable "instances" {}