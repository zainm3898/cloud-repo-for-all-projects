variable "project" {
  description = "Value of the Project"
  type        = string
  default     = "training"
}
variable "app" {
  description = "Value of the Application"
  type        = string
  default     = "app"
}
variable "env" {
  description = "Value of the Environment"
  type        = string
  default     = "dev"
}
variable "bucket_name" {
  description = "Value of the Name tag for the S3 bucket"
  type        = string
  default     = "s3bucket"
}
variable "region" {
  description = "Region"
  type        = string
  default     = "us-east-1"

}

