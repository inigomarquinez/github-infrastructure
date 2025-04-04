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

2. [Create a fine-grained personal access token](https://github.com/settings/tokens/new) to be able to manage your GitHub infrastructure as code, giving it the necessary permissions to manage your repositories, branches, and other resources:

   - `repo` scope: to manage the repositories.
   - `write:org` scope: to manage the organization.
   - `delete:repo` scope: to delete the repositories.

3. To save the infrastructure state, create an account in [Terraform Cloud](https://app.terraform.io/app) and create a new workspace to manage the infrastructure.

4. Connect the new workspace to your repository, allowing Terraform Cloud to manage the infrastructure with Version Control System (VCS) integration.

4. Inside Terraform Cloud, go to your workspace and create the following environment variables:

   - `github_token` (sensitive): the GitHub token created in step 2.

4. Now, whenever a Pull Request is created in the repository, Terraform Cloud will automatically run the `terraform plan` command to review the changes that will be applied to the infrastructure. You can then review the changes and apply them by merging the PR.

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
- [Configuring GitHub.com Access (OAuth)](https://developer.hashicorp.com/terraform/cloud-docs/vcs/github)
- [GitHub Version Control (VCS) Workspace in Terraform Cloud - Tutorial](https://youtu.be/75Y0B7vsBPg?feature=shared)

## ©️ License

Distributed under the MIT License. See [LICENSE](./LICENSE) for more information.
