module "hcp_cluster" {
  source          = "../../"
  region          = "eu-central-1"
  public_endpoint = true
  tier            = "standard_small"
}
