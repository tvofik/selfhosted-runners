data "aws_caller_identity" "current" {}
resource "aws_s3_bucket" "bucket" {
  bucket = "freda-bucket-testing-${data.aws_caller_identity.current.account_id}"
  acl    = "private"

  tags = {
    Name        = "my bucket"
    Environment = "Dev"
  }
}

provider "aws" {
  region = "us-east-1"
}

# variable "account-id" {
#   type = string
#   description = "the account id"
# }



# data.aws_caller_identity.current.account_id