# Frontend Security Group Output
output "frontend_sg_id" {
  description = "ID of the frontend security group"
  value       = aws_security_group.frontend.id
}

# RDS Security Group Output
output "rds_sg_id" {
  description = "ID of the RDS security group"
  value       = aws_security_group.rds.id
}