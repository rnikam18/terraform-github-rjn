#Create S3 bucket
resource "aws_s3_bucket" "rjnstorage0018" {
  bucket = "rjnstorage0018"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}