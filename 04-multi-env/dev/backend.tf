backend "s3" {
    bucket = "roboshop-remote-state07"
    key = "foreach"
    region = "us-east-1"
    dynamodb_table = "pkr-table-locking"
  }