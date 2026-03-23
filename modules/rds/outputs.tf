# RDS Endpoint Output
output "rds_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = aws_db_instance.main.endpoint
}

# RDS Database Name Output
output "rds_db_name" {
  description = "Name of the database"
  value       = aws_db_instance.main.db_name
}