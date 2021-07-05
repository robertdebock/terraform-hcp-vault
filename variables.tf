variable "hvn_id" {
  description = "The ID of the HCP HVN."
  type        = string
  default     = "hcp-vault-hvn"
}

variable "cluster_id" {
  description = "The ID of the HCP Vault cluster."
  type        = string
  default     = "hcp-vault"
}

variable "region" {
  description = "The region of the HCP HVN and Vault cluster."
  type        = string
  default     = "us-west-2"
}

variable "cloud_provider" {
  description = "The cloud provider of the HCP HVN and Vault cluster."
  type        = string
  default     = "aws"
  validation {
    condition     = var.cloud_provider == "aws"
    error_message = "The cloud_provider can only be 'aws'."
  }
}

variable "public_endpoint" {
  description = "Denotes that the cluster has a public endpoint."
  type        = bool
  default     = false
}

variable "tier" {
  description = "Tier of the HCP Vault cluster."
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "standard_small", "standard_medium", "standard_large"], var.tier)
    error_message = "The tier can be: 'dev', 'standard_small', 'standard_medium' or 'standard_large'."
  }
}
