terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "test-org-compoze"
  }
}

################################################################################
# DynamoDB Module
################################################################################

resource "aws_dynamodb_table" "component-name-dynamodb" {
  name         = "component-name"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "Id"
  range_key    = "Name"

  attribute {
    name = "Id"
    type = "S"
  }

  attribute {
    name = "Name"
    type = "S"
  }

  tags = local.common_tags

}
