resource "hcp_hvn" "default" {
  hvn_id         = var.hvn_id
  cloud_provider = var.cloud_provider
  region         = var.region
}

resource "hcp_vault_cluster" "default" {
  hvn_id          = hcp_hvn.default.hvn_id
  cluster_id      = var.cluster_id
  public_endpoint = var.public_endpoint
  tier            = var.tier
}
