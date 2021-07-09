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
  validation {
    condition     = contains(["af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"], var.region)
    error_message = "Please select a region from https://amzn.to/3wtnhxu ."
  }
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
