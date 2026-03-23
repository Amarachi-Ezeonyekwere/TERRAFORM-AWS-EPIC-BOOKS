# Frontend Outputs
output "frontend_public_ip" {
  description = "Public IP of the frontend EC2 instance"
  value       = module.frontend.frontend_public_ip
}

output "frontend_public_dns" {
  description = "Public DNS of the frontend EC2 instance"
  value       = module.frontend.frontend_public_dns
}

# RDS Outputs
output "rds_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = module.rds.rds_endpoint
}

output "rds_db_name" {
  description = "Name of the database"
  value       = module.rds.rds_db_name
}
