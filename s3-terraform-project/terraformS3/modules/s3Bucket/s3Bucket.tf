provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "s3Bucket" {
  bucket = "${var.project}-${var.app}-${var.env}-${var.bucket_name}-${var.region}"
  tags = {
    Name    = format("%s-%s-%s-%s-%s-%s", var.project, var.app, var.env, var.bucket_name, var.region, terraform.workspace)   
    project = var.project
    app     = var.app
    env     = var.env
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.s3Bucket.id
  versioning_configuration {
    status = var.versioning_staus
  }
}


