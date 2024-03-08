# -----------------------------------------------------------------------------
# ℹ️ This resource allows you to set the default branch for a given repository.
# 🔗 https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default
# -----------------------------------------------------------------------------

locals {
  github_branch_default = var.github_branch_default
}

resource "github_branch_default" "branch_default" {
  depends_on  = [github_repository.repository]

  repository  = github_repository.repository.name

  branch      = local.github_branch_default.branch
  rename      = local.github_branch_default.rename
}
