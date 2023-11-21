# output "bucket_id" {
#   value = module.s3_bucket.bucket_id
# }

# output "ec2_ids" {
#   value = module.ec2_list.ec2_id
# }

# output "ec2_region" {
#   value = module.ec2_list.ec2_region
# }

# Displays instance state
output "instance_state" {
  value = module.ec2_instance.instance_state
}