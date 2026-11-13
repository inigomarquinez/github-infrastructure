################################################################################
# 🤔 How to repositories
################################################################################

module "repository_howto-1password-load-secrets-to-env" {
  source = "./templates"

  github_repository = {
    name         = "howto-1password-load-secrets-to-env"
    description  = "🔐 How to load secrets from 1Password to environment variables."
    topics = [
      "howto",
      "1password",
      "secrets",
      "env"
    ]
  }
}

module "repository_howto-release-please-python" {
  source = "./templates"

  github_repository = {
    name               = "howto-release-please-python"
    description        = "🧪 POC to use Google's release-please github action to create releases in a python service"
    gitignore_template = "Python"
    topics = [
      "poc",
      "release-please",
      "python"
    ]
  }
}
