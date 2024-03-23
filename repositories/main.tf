# -----------------------------------------------------------------------------
# Manage GitHub REPOSITORIES.
# -----------------------------------------------------------------------------

# module "repository_test-repo" {
#   source = "./templates"

#   github_repository = {
#     name                = "test-repo",
#     description         = "This is a test repository",
#     topics              = ["terraform", "github", "test"],
#     archive_on_destroy  = false
#   }
# }

module "repository_slides" {
  source = "./templates"

  github_repository = {
    name                = "slides",
    description         = "🎞️ Slides of all my presentations made with revealjs",
    topics              = ["slides", "revealjs", "inigomarquinez"],

    pages = {
      build_type = "workflow"
    }
  }
}

module "repository_security" {
  source = "./templates"

  github_repository = {
    name                = "security",
    description         = "🔐 Repositories security and analysis",
    topics              = ["security", "analysis", "maintenance", "scorecard", "openssf-scorecard", "inigomarquinez"]
  }
}

module "repository_base-configs" {
  source = "./templates"

  github_repository = {
    name                = "base-configs",
    description         = "🪄 A collection of opinionated base configs for code quality and linting tools",
    topics              = ["shareable-configs", "npm-package-json-lint", "prettier", "inigomarquinez"],

    import = {
      repository = "base-configs"
    }
  }
}