# -----------------------------------------------------------------------------
# Authenticate with GitHub API usingPersonal Access Token.
# 🔗 https://registry.terraform.io/providers/integrations/github/latest/docs#oauth--personal-access-token
# -----------------------------------------------------------------------------

provider "github" {
  token = var.github_token
}
