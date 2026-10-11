output "elasticsearch_security_system_users_id" {
  description = "Map of id values across all elasticsearch_security_system_users, keyed the same as var.elasticsearch_security_system_users except keys with no id are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_system_user.elasticsearch_security_system_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticsearch_security_system_users_elasticsearch_connection" {
  description = "Map of elasticsearch_connection values across all elasticsearch_security_system_users, keyed the same as var.elasticsearch_security_system_users except keys with no elasticsearch_connection are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_system_user.elasticsearch_security_system_users : k => v.elasticsearch_connection if v.elasticsearch_connection != null && length(v.elasticsearch_connection) > 0 }
  sensitive   = true
}
output "elasticsearch_security_system_users_enabled" {
  description = "Map of enabled values across all elasticsearch_security_system_users, keyed the same as var.elasticsearch_security_system_users except keys with no enabled are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_system_user.elasticsearch_security_system_users : k => v.enabled if v.enabled != null }
}
output "elasticsearch_security_system_users_password" {
  description = "Map of password values across all elasticsearch_security_system_users, keyed the same as var.elasticsearch_security_system_users except keys with no password are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_system_user.elasticsearch_security_system_users : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "elasticsearch_security_system_users_password_hash" {
  description = "Map of password_hash values across all elasticsearch_security_system_users, keyed the same as var.elasticsearch_security_system_users except keys with no password_hash are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_system_user.elasticsearch_security_system_users : k => v.password_hash if v.password_hash != null && length(v.password_hash) > 0 }
  sensitive   = true
}
output "elasticsearch_security_system_users_username" {
  description = "Map of username values across all elasticsearch_security_system_users, keyed the same as var.elasticsearch_security_system_users except keys with no username are omitted"
  value       = { for k, v in elasticstack_elasticsearch_security_system_user.elasticsearch_security_system_users : k => v.username if v.username != null && length(v.username) > 0 }
}

