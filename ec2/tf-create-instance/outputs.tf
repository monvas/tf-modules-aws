output "instance_id" {
  value = aws_instance.this[*].id
}

output "instance_state" {
  value = aws_instance.this[*].instance_state
}