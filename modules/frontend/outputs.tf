# Frontend Public IP Output
output "frontend_public_ip" {
  description = "Public IP of the frontend EC2 instance"
  value       = aws_instance.frontend.public_ip
}

# Frontend Public DNS Output
output "frontend_public_dns" {
  description = "Public DNS of the frontend EC2 instance"
  value       = aws_instance.frontend.public_dns
}