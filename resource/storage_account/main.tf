#Create S3 bucket
resource "aws_s3_bucket" "rjnstorage0019" {
  bucket = "rjnstorage0019"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}