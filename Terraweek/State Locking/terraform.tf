terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "4.66.1"
    }
  }
# }

# terraform {
  
backend "s3" {
    bucket = "terraweek-remote--state-bucket"
    key = "terraform.tfstate" #adding state, we use key to do so
    region = "us-east-1"
    dynamodb_table = "terraweek_state-table"
}
}