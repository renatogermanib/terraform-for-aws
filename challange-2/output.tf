output "db_private_ip" {
  value = aws_eip.elasticip.private_ip
}

output "webserver_public_ip" {
  value = aws_eip.elasticip.public_ip
}