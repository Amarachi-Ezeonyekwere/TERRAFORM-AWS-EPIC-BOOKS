variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "private_subnet_1_id" {
  description = "ID of private subnet 1"
  type        = string
}

variable "private_subnet_2_id" {
  description = "ID of private subnet 2"
  type        = string
}

variable "rds_sg_id" {
  description = "ID of the RDS security group"
  type        = string
}

variable "db_name" {
  description = "Name of the database"
  type        = string
}

variable "db_username" {
  description = "Master username for the database"
  type        = string
  sensitive   = true       # hides the value in terminal output
}

variable "db_password" {
  description = "Master password for the database"
  type        = string
  sensitive   = true       # hides the value in terminal output
}

variable "db_instance_class" {
  description = "Instance class for the RDS instance"
  type        = string
  default     = "db.t3.micro"   # free tier eligible
}
