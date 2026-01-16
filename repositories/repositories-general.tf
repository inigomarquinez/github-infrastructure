################################################################################
# General repositories
################################################################################

module "repository_advent-of-code" {
  source = "./templates"

  github_repository = {
    name         = "advent-of-code"
    description  = "🧠 My solutions to Advent of Code's annual challenges."
    homepage_url = "https://adventofcode.com/"
    topics = [
      "advent-of-code"
    ]
  }
}

module "repository_base-configs" {
  source = "./templates"

  github_repository = {
    name        = "base-configs"
    description = "🪄 A collection of opinionated base configs for code quality and linting tools."
    topics = [
      "inigomarquinez",
      "npm-package-json-lint",
      "prettier",
      "shareable-configs"
    ]
  }
}

module "repository_base-configs-generator" {
  source = "./templates"

  github_repository = {
    name        = "base-configs-generator"
    description = "🪄 A monorepo scaffolding tool providing a unified setup with opinionated base configurations for code quality and linting tools."
    topics = [
      "generator",
      "shareable-configs"
    ]
  }
}

module "repository_cognito-custom-email-sender" {
  source = "./templates"

  github_repository = {
    name        = "howto-cognito-custom-email-sender"
    description = "📧 POC to configure a custom email sender for Amazon Cognito."
    topics = [
      "amazon-cognito",
      "aws",
      "cognito",
      "custom-email-sender",
      "email",
      "poc"
    ]
  }
}

module "repository_github-snitch" {
  source = "./templates"

  github_repository = {
    name                = "github-snitch"
    description         = "🕵️ GitHub action that retrieves the basic information of all repos of a github user/organisation."
    topics              = [
      "github",
      "github-action"
    ]

    # template = {
    #   owner                = "github"
    #   repository           = "javascript-action"
    #   include_all_branches = false
    # }
  }
}

module "repository_security" {
  source = "./templates"

  github_repository = {
    name        = "security"
    description = "🔐 Repositories security and analysis."
    topics = [
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
    name        = "slides"
    description = "🎞️ Slides of all my presentations made with revealjs."
    topics = [
      "inigomarquinez",
      "revealjs",
      "slides"
    ]

    pages_enable = true
  }
}

module "repository_slides" {
  source = "./templates"

  github_repository = {
    name        = "strapi-plugin-country-isocode-selector"
    description = "🗺️ A strapi custom field plugin to select any country based on the ISO 3166-1 country code standard."
    topics = [
      "strapi",
      "plugin",
      "country",
      "isocode",
      "custom-field"
    ]
  }
}

module "repository_tiny-web-recipes" {
  source = "./templates"

  github_repository = {
    name        = "tiny-web-recipes"
    description = "🧑‍🍳 Quick web recipes for HTML, CSS and JS."
    topics = [
      "inigomarquinez",
      "recipes",
      "html",
      "css",
      "js"
    ]

    pages_enable      = true
    pages_build_type  = "workflow"
    pages_cname       = "inigomarquinezprado.dev/tiny-web-recipes"
    pages_branch      = "main"
    pages_path        = "/"
  }
}
