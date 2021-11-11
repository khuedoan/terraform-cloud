# Terraform Cloud

Manage Terraform Cloud using Terraform

## Prerequisites

- Create a Terraform Cloud account at <https://app.terraform.io>
- Create an Organization (I named mine `khuedoan`)
- Create an API token at <https://app.terraform.io/app/settings/tokens>
- Create a Workspace named `terraform-cloud`
- Create an environment variable for the token:
  - Key: `TFE_TOKEN`
  - Value: `mysupersecret.token.abcdefghijklmnop` (from the previous step)
  - Sensitive: `true`
  - Description: `Terraform Cloud API token`

## Import current workspaces (if any)

```sh
terraform init
terraform import tfe_workspace.$NAME $ID
```

## Apply changes

```sh
terraform init
terraform apply
```
