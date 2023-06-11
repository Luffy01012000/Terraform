resource "local_file" "auto" {
  filename = var.filename
  content = var.content
}
resource "local_file" "auto1" {
  filename = "/media/goku/985b1c56-53fe-43c7-b6b8-8be304595cd7/Downloads/Devops/TrainWithShubham/Free Terraform Course/practice/content1.txt"
  content = var.map["content1"]
#   content = var.map.content1
}
resource "local_file" "auto2" {

  filename = "/media/goku/985b1c56-53fe-43c7-b6b8-8be304595cd7/Downloads/Devops/TrainWithShubham/Free Terraform Course/practice/content2.txt"
  content = var.map["content2"]
#   content = var.map.content2
}
resource "local_file" "auto3" {
#   filename = var.map["content1"]
  filename = var.file_list[0]
  content = var.map["content1"]
#   content = var.map.content1
#   content = var.map.content2
}
resource "local_file" "auto4" {
#   filename = var.map["content1"]
  filename = var.file_list[1]
  content = var.map["content2"]
#   content = var.map.content1
#   content = var.map.content2
}

output "import" {
  value = var.blank
}
/*
output "aws_ec2_name" {
  value = var.aws_ec2_object.name

}

output "aws_ec2_instances" {
  value = var.aws_ec2_object.instances
}

output "aws_ec2_ami" {
  value = var.aws_ec2_object.ami
}*/

output "aws_ec2_info" {
  value = var.aws_ec2_object
#   sensitive = true
}

output "json_name_info" {
  value = var.name
}

output "json_instances_info" {
  value = var.instances
}