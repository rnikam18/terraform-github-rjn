terraform{
    backend "aws_s3_bucket" {
        region = "us-west-2"
        bucket = "terraform-202412"
        key = "dev.aws_s3_bucket.tfstate"
        encrypt = true
        dynamodb_table = "terraform-202412"  
    }
}

#Create S3 bucket
resource "aws_s3_bucket" "rjnstorage0019" {
  bucket = "rjnstorage0019"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}