# Networking Module
module "networking" {
  source = "./modules/networking"

  project_name          = var.project_name
  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr_1  = var.public_subnet_cidr_1
  public_subnet_cidr_2  = var.public_subnet_cidr_2
  private_subnet_cidr_1 = var.private_subnet_cidr_1
  private_subnet_cidr_2 = var.private_subnet_cidr_2
}

# Security Groups Module
module "security_groups" {
  source = "./modules/security_groups"

  project_name = var.project_name
  vpc_id       = module.networking.vpc_id          # comes from networking module
}

# RDS Module
module "rds" {
  source = "./modules/rds"

  project_name        = var.project_name
  private_subnet_1_id = module.networking.private_subnet_1_id   # comes from networking module
  private_subnet_2_id = module.networking.private_subnet_2_id   # comes from networking module
  rds_sg_id           = module.security_groups.rds_sg_id        # comes from security_groups module
  db_name             = var.db_name
  db_username         = var.db_username
  db_password         = var.db_password
  db_instance_class   = var.db_instance_class
}

# Frontend Module
module "frontend" {
  source = "./modules/frontend"

  project_name       = var.project_name
  public_subnet_1_id = module.networking.public_subnet_1_id     # comes from networking module
  frontend_sg_id     = module.security_groups.frontend_sg_id    # comes from security_groups module
  key_name           = var.key_name
  instance_type      = var.instance_type
}
