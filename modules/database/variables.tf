variable "region_name" {
  description = "Region name (e.g., tokyo)"
  type        = string
}

variable "db_subnet_id" {
  description = "ID of the database subnet"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for the database"
  type        = string
}

variable "db_engine" {
  description = "Database engine (e.g., postgres, mysql)"
  type        = string
  default     = "postgres"
}

variable "db_engine_version" {
  description = "Database engine version"
  type        = string
  default     = "13.4"
}

variable "db_instance_class" {
  description = "Database instance type (e.g., db.t3.micro)"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Name of the database"
  type        = string
  default     = "mydb"
}

variable "db_username" {
  description = "Master username for the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Master password for the database"
  type        = string
}

variable "db_allocated_storage" {
  description = "Allocated storage for the database (in GB)"
  type        = number
  default     = 20
}

variable "backup_retention_period" {
  description = "Number of days to retain backups"
  type        = number
  default     = 7
}

variable "storage_encrypted" {
  description = "Whether to encrypt the database storage"
  type        = bool
  default     = true
}

variable "multi_az" {
  description = "Whether to deploy the database in a Multi-AZ configuration"
  type        = bool
  default     = false
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
}
