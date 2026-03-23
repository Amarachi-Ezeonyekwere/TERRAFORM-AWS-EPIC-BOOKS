variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_1" {
  description = "CIDR block for public subnet 1"
  type        = string
}

variable "public_subnet_cidr_2" {
  description = "CIDR block for public subnet 2"
  type        = string
}

variable "private_subnet_cidr_1" {
  description = "CIDR block for private subnet 1"
  type        = string
}

variable "private_subnet_cidr_2" {
  description = "CIDR block for private subnet 2"
  type        = string
}

variable "project_name" {
  description = "Name of the project"
  type        = string
}