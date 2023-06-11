resource "local_file" "terrademo" {
    filename = "/media/goku/985b1c56-53fe-43c7-b6b8-8be304595cd7/Downloads/Devops/TrainWithShubham/Free Terraform Course/practice/terrademo.txt"
    content = "learning terraform..."
  
}

resource "random_string" "ran_str" {
  length = 16
  special = true
  override_special = "!#$%&*()-_+=[]{}<>:?"
}

output "ran_str" {
    value = random_string.ran_str[*].result
  
}