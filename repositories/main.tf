# -----------------------------------------------------------------------------
# Manage GitHub REPOSITORIES.
# -----------------------------------------------------------------------------

#  Alphabetically ordered

module "repository_awesome-web-resources" {
  source = "./templates"

  github_repository = {
    name                = "awesome-web-resources",
    description         = "🕶️ Web resources that I have found and that I would like to try in real projects",
    topics              = [
      "awesome",
      "web",
      "resources"
    ]
  }
}

module "repository_base-configs" {
  source = "./templates"

  github_repository = {
    name                = "base-configs",
    description         = "🪄 A collection of opinionated base configs for code quality and linting tools",
    topics              = [
      "inigomarquinez",
      "npm-package-json-lint",
      "prettier",
      "shareable-configs"
    ],

    # This repository was imported to the Terraform state.
    # import = {
    #   repository = "base-configs"
    # }
  }
}

module "repository_hygen-base-configs" {
  source = "./templates"

  github_repository = {
    name                = "hygen-base-configs",
    description         = "🪄 A hygen package to generate your own set of shared configurations",
    topics              = [
      "cli",
      "generator",
      "hygen",
      "inigomarquinez",
      "shareable-configs",
      "tools"
    ]
  }
}

module "repository_security" {
  source = "./templates"

  github_repository = {
    name                = "security",
    description         = "🔐 Repositories security and analysis",
    topics              = [
      "analysis",
      "inigomarquinez",
      "maintenance",
      "openssf-scorecard",
      "scorecard",
      "security"
    ]
  }
}

module "repository_slides" {
  source = "./templates"

  github_repository = {
    name                = "slides",
    description         = "🎞️ Slides of all my presentations made with revealjs",
    topics              = [
      "inigomarquinez",
      "revealjs",
      "slides"
    ],

    pages = {
      build_type = "workflow"
    }
  }
}

# Example to import an existing repository to the Terraform state.
# module "repository_existing-repo" {
#   source = "./templates"

#   github_repository = {
#     name                = "existing-repo",
#     description         = "Description of the existing repository",
#     topics              = [],

#     import = {
#       repository = "existing-repo"
#     }
#   }
# }