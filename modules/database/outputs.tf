output "db_endpoint" {
  description = "The endpoint of the database"
  value       = aws_db_instance.database.endpoint
}

output "db_identifier" {
  description = "The identifier of the database"
  value       = aws_db_instance.database.id
}
