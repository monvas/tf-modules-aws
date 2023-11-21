/*
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
*/

/* 
    Creates EC2 instance
*/
module "ec2_instance" {
  source = "./ec2/tf-create-instance"
  providers = {
    aws = aws.en1
  }
  key_name = "ec2-keypair"
  security_groups = ["sg-03a4f6e5db55bfe95"]
}

/* 
    Updates previous EC2 instance to stopped state
*/
module "ec2_state" {
    source = "./ec2/tf-instance-state"
  providers = {
    aws = aws.en1
  }
  instance_id = module.ec2_instance.instance_id[0]
  state = "stopped"
}

# module "ec2_list" {
#     source = "./ec2/tf-list-instances"
#       providers = {
#         aws = aws.en1
#     }
# }

