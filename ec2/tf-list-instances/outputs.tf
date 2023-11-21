output "ec2_id" {
  value = data.aws_instances.this.ids
}

output "ec2_region" {
  value = data.aws_instances.this.id
}
