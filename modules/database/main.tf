terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "${var.region_name}-db-subnet-group"
  subnet_ids = [var.db_subnet_id]

  tags = merge(var.common_tags, {
    Name = "${var.region_name}-db-subnet-group"
  })
}

resource "aws_db_instance" "database" {
  allocated_storage      = var.db_allocated_storage
  engine                 = var.db_engine
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  # name                   = var.db_name
  username               = var.db_username
  password               = var.db_password
  vpc_security_group_ids = [var.security_group_id]
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name

  backup_retention_period = var.backup_retention_period
  storage_encrypted       = var.storage_encrypted
  multi_az                = var.multi_az

  tags = merge(var.common_tags, {
    Name = "${var.region_name}-database"
  })
}
