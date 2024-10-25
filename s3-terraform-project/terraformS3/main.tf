module "s3Bucket" {
  source      = "./modules/s3Bucket"
  region      = var.region
  project     = var.project
  app         = var.app
  env         = var.env
  bucket_name = var.bucket_name
}
module "bucketPolicy" {
  source        = "./modules/bucketPolicy"
  s3_Bucket_id  = module.s3Bucket.s3_Bucket_id
  s3_Bucket_arn = module.s3Bucket.s3_Bucket_arn
  region        = var.region
  project       = var.project
  app           = var.app
  env           = var.env
}

