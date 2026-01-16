################################################################################
# 🧪 POC repositories
################################################################################

module "repository_poc-astro-monorepo" {
  source = "./templates"

  github_repository = {
    name         = "poc-astro-monorepo"
    description  = "🧪 POC to test several Astro projects in a monorepo setup."
    topics = [
      "monorepo",
      "astro",
      "poc"
    ]
  }
}

module "repository_poc-keycloak" {
  source = "./templates"

  github_repository = {
    name         = "poc-keycloak"
    description  = "🧪 POC to test Keycloak as an identity provider in both a frontend and backend services."
    topics = [
      "identity-provider",
      "keycloak",
      "poc"
    ]
  }
}

module "repository_poc-secheaders-integration" {
  source = "./templates"

  github_repository = {
    name         = "poc-secheaders-integration"
    description  = "🧪 PoC for integrating SecHeaders in a CI environment to analyze and improve HTTP security headers."
    topics = [
      "ci",
      "secheaders",
      "poc",
      "security",
      "http-headers"
    ]
  }
}

module "repository_poc-shadcn-ui" {
  source = "./templates"

  github_repository = {
    name        = "poc-shadcn-ui"
    description = "🧪 POC to test shadcn/ui in a Next.js project."
    topics = [
      "nextjs",
      "poc",
      "shadcn-ui",
      "tailwind"
    ]
  }
}

module "repository_poc-tailwind-elements" {
  source = "./templates"

  github_repository = {
    name        = "poc-tailwind-elements"
    description = "🧪 POC to test Tailwind Elements library in a Next.js project."
    topics = [
      "nextjs",
      "poc",
      "tailwind",
      "tailwind-elements"
    ]
  }
}

module "repository_poc-unlighthouse-integration" {
  source = "./templates"

  github_repository = {
    name         = "poc-unlighthouse-integration"
    description  = "🧪 PoC for integrating the Unlighthouse tool in a CI environment."
    topics = [
      "ci",
      "unlighthouse",
      "poc",
      "static-site"
    ]
    homepage_url = "https://inigomarquinez.github.io/poc-unlighthouse-integration/"
    pages_enable = true
  }
}
