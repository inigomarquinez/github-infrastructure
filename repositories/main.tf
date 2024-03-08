# -----------------------------------------------------------------------------
# Manage GitHub REPOSITORIES.
# -----------------------------------------------------------------------------

provider "github" {
  token = var.github_token
  owner = var.github_token_owner
}

module "repository-test-repo" {
  source = "./templates"

  github_repository = {
    name                = "test-repo",
    topics              = ["terraform", "github", "test"],
    archive_on_destroy  = false
  }
}
