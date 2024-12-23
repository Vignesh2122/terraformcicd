resource "aws_cognito_user_pool" "dev" {
  name                = var.user_pool
  username_attributes = ["email"]

  schema {
    name                = "email"
    attribute_data_type = "String"
    required            = true
    mutable             = false
  }

  schema {
    name                = "username"
    attribute_data_type = "String"
    required            = false
    mutable             = true
  }

  password_policy {
    minimum_length    = 8
    require_lowercase = true
    require_numbers   = true
    require_symbols   = true
    require_uppercase = true
  }

  auto_verified_attributes = ["email"]

  tags = {
    Name = var.user_pool
  }
}

resource "aws_cognito_user_pool_client" "app" {
  name                = "client"
  user_pool_id        = aws_cognito_user_pool.dev.id
  allowed_oauth_flows = ["code"]
  allowed_oauth_scopes = [
    "openid",
    "profile",
  ]
  callback_urls = var.callback
  logout_urls   = var.logout

  generate_secret = true
}
