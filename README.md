# HashiCorp Terraform HCP Vault deployment.

This repository allows spinning up a HashiCorp Vault cluster on the HashiCorp Cloud Platform.

Requirements:

- [Terraform](https://www.terraform.io/) installed.
- An [HCP](https://portal.cloud.hashicorp.com/) account.
- An [HCP service principal](https://portal.cloud.hashicorp.com/access/service-principals).

## HCP service principal

1. Login to [HCP](https://portal.cloud.hashicorp.com/).
2. Select the organization.
3. Select "Access control (IAM)".
4. Select "Service principals".
5. Click "New Service Principal".
6. Give the service principal a name.
7. Click on the newly created service principal.
8. Click on "Create service principal key".
9. `export HCP_CLIENT_ID="THE-CLIENT-ID"`.
10. `export HCP_CLIENT_SECRET="THE-CLIENT-SECRET"`.

## Configuration

In the file `terraform.tfvars` you can override these variables.

|variable       |type   |default        |options                                                               |
|---------------|-------|---------------|----------------------------------------------------------------------|
|hvn_id         |string |`hcp-vault-hvn`|alphanumeric                                                          |
|cluster_id     |string |`hcp-vautl`    |alphanumeric                                                          |
|region         |string |`us-west-2`    |An [aws region](https://amzn.to/3wtnhxu).                             |
|cloud_provider |string |`aws`          |Only `aws`.                                                           |
|public_endpoint|boolean|`false`        |`false` or `true`                                                     |
|tier           |string |`dev`          |Either `dev`, `standard_small`, `standard_medium` or `standard_large`.|

## Initialize

```shell
terraform init
```

## Deploy

```shell
terraform plan
terraform apply
```

## Destroy

```shell
terraform destroy
```
