variable "local_path" {
  description = "The path to the directory containing the files to be uploaded."
}

variable "bucket_name" {
  description = "The name of the bucket where to upload the object"
}

variable "object_files" {
  default = []
}
