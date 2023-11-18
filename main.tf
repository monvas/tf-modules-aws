module "s3_bucket" {
  source = "./s3/tf-s3-bucket"
  providers = {
        aws = aws.ew2
    }
}

module "s3_object_upload" {
    source = "./s3/tf-s3-object"
    providers = {
        aws = aws.aps1
    }

    bucket_name = "mssm3"
    local_path = "./Test"
    object_files = ["cat4.jpg","dog4.jpg"]
}