# GitHub provider authentication.
# 🔗 https://registry.terraform.io/providers/integrations/github/latest/docs#oauth--personal-access-token
provider "github" {
  token = var.github_token
  owner = var.github_token_owner
}

module "repositories" {
  source = "./repositories"
}
