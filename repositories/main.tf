# -----------------------------------------------------------------------------
# Manage GitHub REPOSITORIES.
# -----------------------------------------------------------------------------

module "repository_test-repo" {
  source = "./templates"

  github_repository = {
    name                = "test-repo",
    description         = "This is a test repository",
    topics              = ["terraform", "github", "test"],
    archive_on_destroy  = false
  }
}
