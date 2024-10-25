provider "aws" {
  region = var.region
}
resource "aws_s3_bucket_policy" "encryptionPolicy" {
  bucket = var.s3_Bucket_id
  policy = data.aws_iam_policy_document.encryptionPolicy.json
}

data "aws_iam_policy_document" "encryptionPolicy" {
  statement {
    sid    = "Stmt1576350173119"
    effect = "Deny"
    resources = [
      var.s3_Bucket_arn,
      "${var.s3_Bucket_arn}/*",
    ]
    actions = ["s3:PutObject"]

    condition {
      test     = "StringNotEquals"
      variable = "s3:x-amz-server-side-encryption"
      values   = ["AES256"]
    }

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }

  statement {
    sid    = "Stmt1576350206882"
    effect = "Deny"
    resources = [
      var.s3_Bucket_arn,
      "${var.s3_Bucket_arn}/*",
    ]
    actions = ["s3:PutObject"]

    condition {
      test     = "Null"
      variable = "s3:x-amz-server-side-encryption"
      values   = ["True"]
    }

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}

