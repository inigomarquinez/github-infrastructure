################################################################################
# 🧪 Lab repositories
################################################################################

module "repository_lab-bilderio" {
  source = "./templates"

  github_repository = {
    name         = "lab-bilderio"
    description  = "🧪 Integration of builder.io in an Astro app"
    topics = [
      "lab"
    ]
  }
}
