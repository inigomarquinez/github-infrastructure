# github-infrastructure <!-- omit in toc -->

[![license MIT](https://img.shields.io/github/license/inigomarquinez/github-infrastructure?style=flat-square&labelColor=292a44&color=663399)](./LICENSE)

> [!NOTE]
> Management of my GitHub infrastructure as code (IaC) using Terraform.

## 📖 Table of Contents <!-- omit in toc -->

- [Usage](#📄-usage)
- [Useful resources](#🔗-useful-resources)
- [License](#©️-license)

## 📄 Usage

### Requirements

1. Install [Terraform](https://developer.hashicorp.com/terraform/install) to manage the infrastructure as code.

2. [Create a fine-grained personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token) to be able to manage your GitHub infrastructure as code, giving it the necessary permissions to manage your repositories, branches, and other resources.

3. To save the infrastructure state, create an account in [Terraform Cloud](https://app.terraform.io/app) and create a new workspace to manage the infrastructure. 

4. Create the `terraform.tfvars` file to save the variables and secrets created in the previous steps, such as the GitHub token. Remember to add the file to the `.gitignore` file to avoid committing it to the repository!

```hcl
github_token = <your-github-token>
github_token_owner = <your-github-username>
terraform_cloud_organization = <your-terraform-cloud-organization>
terraform_cloud_organization_workspace = <your-terraform-cloud-organization-workspace>
```

### First usage

1. Before using the infrastructure for the first time you need to run:

```bash
terraform init
```

2. Then you can review the changes that will be applied:

```bash
terraform plan
```

3. And finally, apply the changes:

```bash
terraform apply
```

### Creating new repositories

To create new repositories, add them to the [`repositories module`](./repositories/main.tf) and apply the changes.

### Importing existing repositories to the infrastructure

To [import existing repositories to the infrastructure](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#template-repositories), use the following commands:

```bash
terraform import module.repositories.module.<module-repository-name>.github_repository.repository <repository-name>
terraform import module.repositories.module.<module-repository-name>.github_branch.default <repository-name>:<branch-name>
```


## 🔗 Useful resources

- [Git organizations are chaotic, but not anymore (IaC)](https://bounteous17.medium.com/git-organizations-are-chaotic-but-not-anymore-iac-70e20bfc1672)
- [How to manage your GitHub Organization with Terraform](https://blog.terramate.io/how-to-manage-your-github-organization-with-terraform-1b584b2ea177)
- [Terraform GitHub Provider](https://registry.terraform.io/providers/integrations/github/latest/docs)
- [What is Terraform cloud](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-sign-up)
- [VCS-driven workflow for Terraform Cloud](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-vcs-change)


## ©️ License

Distributed under the MIT License. See [LICENSE](./LICENSE) for more information.
