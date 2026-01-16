################################################################################
# 📚 Learning repositories
################################################################################

module "repository_learning-astro" {
  source = "./templates"

  github_repository = {
    name         = "learning-astro"
    description  = "📚 Desarrollo web ultra rápido con Astro (Udemy)."
    homepage_url = "https://inigomarquinez.github.io/learning-astro/"
    topics = [
      "astro",
      "learning",
      "udemy"
    ]
    pages_enable = true
  }
}

module "repository_learning-langchain" {
  source = "./templates"

  github_repository = {
    name        = "learning-langchain"
    description = "📚 LangChain: Develop AI web-apps with JavaScript and LangChain (Udemy)."
    topics = [
      "ai",
      "langchain",
      "learning",
      "udemy"
    ]
  }
}
