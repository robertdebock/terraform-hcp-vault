output "created_at" {
  value = hcp_vault_cluster.default.created_at
}

output "vault_public_endpoint_url" {
  value = hcp_vault_cluster.default.vault_public_endpoint_url
}

output "vault_version" {
  value = hcp_vault_cluster.default.vault_version
}
