################################################################################
# DynamoDB Module
################################################################################

# dynamodb arn
output "aws_dynamodb_table_arn" {
  description = "ARN of aws_dynamodb_table"
  value       = aws_dynamodb_table.component-name-dynamodb.arn
}
# dynamodb id
output "aws_dynamodb_table_id" {
  description = "id of aws_dynamodb_table"
  value       = aws_dynamodb_table.component-name-dynamodb.id
}
