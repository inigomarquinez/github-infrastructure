################################################################################
# 🦄 Special repositories
################################################################################

module "repository_github" {
  source = "./templates"

  github_repository = {
    name        = ".github"
    description = "📝 Default community health files and configurations for my projects."
    topics = [
      "configuration",
      "health-files",
      "inigomarquinez"
    ]
  }
}

module "repository_inigomarquinez" {
  source = "./templates"

  github_repository = {
    name        = "inigomarquinez"
    description = "👤 My GitHub profile."
    topics = [
      "inigomarquinez"
    ]
  }
}

module "repository_inigomarquinez-github-io" {
  source = "./templates"

  github_repository = {
    name         = "inigomarquinez.github.io"
    description  = "🌐 My personal GitHub website."
    homepage_url = "https://inigomarquinez.github.io/"
    topics = [
      "portfolio",
      "inigomarquinez"
    ]
    pages_enable      = true
    pages_build_type  = "workflow"
    pages_cname       = "inigomarquinezprado.dev"
    pages_branch      = "main"
    pages_path        = "/"
  }
}
