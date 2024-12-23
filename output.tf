output "user_pool_id" {
  value = aws_cognito_user_pool.dev.id
}

output "client_id" {
  value = aws_cognito_user_pool_client.app.id
}

#output "client_secert" {
   # value = aws_cognito_user_pool_client.app.client_secret
    #sensitive = true
  
#}

output "arn" {
    value = aws_cognito_user_pool.dev.arn
}