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
