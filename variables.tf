variable "bucket_name" {
  description = "the name to give the bucket"
}

variable "region" {
  description = "Region where the S3 bucket will be created"
  type = "string"
}

variable "force_destroy" {
  default = false
  description = "Whether to allow a forceful destruction of this bucket"
}

variable "deletion_window_in_days" {
  default = 7
  description = "This key is used to encrypt bucket objects"
}
