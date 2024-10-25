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


variable "s3_Bucket_id" {}
variable "s3_Bucket_arn" {}
variable "region" {}
