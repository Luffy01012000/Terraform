resource "aws_s3_bucket" "my_remote_s3_bucket" {
    bucket = "terraweek-remote--state-bucket"
  force_destroy = true 
}

resource "aws_dynamodb_table" "Dynamodb_table" {
  name = "terraweek_state-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID" #this has attribute
  attribute {
    name = "LockID"
    type = "S"
  }
}