################################################################################
# 🤼 Challenge repositories
################################################################################

module "repository_challenge-phone-catalog-app" {
  source = "./templates"

  github_repository = {
    name        = "challenge-phone-catalog-app"
    description = "A very simple product catalog app."
    topics = [
      "challenge",
      "guidesmiths"
    ]
  }
}


module "repository_challenge-sinusoidal-wave-form" {
  source = "./templates"

  github_repository = {
    name        = "challenge-sinusoidal-wave-form"
    description = "Qt small application that generates a sinusoidal wave form based on several user configurable parameters."
    topics = [
      "challenge",
      "innerspec"
    ]
  }
}
