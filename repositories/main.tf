################################################################################
# Manage GitHub REPOSITORIES.
################################################################################

#-------------------------------------------------------------------------------
# 🦄 Special repositories
#-------------------------------------------------------------------------------

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

#-------------------------------------------------------------------------------
# 
#-------------------------------------------------------------------------------

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

#-------------------------------------------------------------------------------
# 🤼 Challenge repositories
#-------------------------------------------------------------------------------

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

#-------------------------------------------------------------------------------
# 🥋 Kata repositories
#-------------------------------------------------------------------------------

module "repository_kata-gilded-rose" {
  source = "./templates"

  github_repository = {
    name         = "kata-gilded-rose"
    description  = "🥋 Gilded Rose Kata."
    homepage_url = "https://kata-log.rocks/gilded-rose-kata"
    topics = [
      "kata"
    ]
  }
}

module "repository_kata-look-and-say-sequence" {
  source = "./templates"

  github_repository = {
    name         = "kata-look-and-say-sequence"
    description  = "🥋 Look and say sequence kata."
    homepage_url = "https://en.wikipedia.org/wiki/Look-and-say_sequence"
    topics = [
      "kata"
    ]
  }
}

module "repository_kata-ohce" {
  source = "./templates"

  github_repository = {
    name         = "kata-ohce"
    description  = "🥋 ohce kata."
    homepage_url = "https://kata-log.rocks/ohce-kata"
    topics = [
      "kata"
    ]
  }
}
#-------------------------------------------------------------------------------
# 📚 Learning repositories
#-------------------------------------------------------------------------------

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

#-------------------------------------------------------------------------------
# 🧪 POC repositories
#-------------------------------------------------------------------------------

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


#-------------------------------------------------------------------------------
# Example to import an existing repository to the Terraform state.
# Take a look at `main.tf` file too.
#-------------------------------------------------------------------------------
# module "repository_existing-repo" {
#   source = "./templates"

#   github_repository = {
#     name                = "existing-repo"
#     description         = "Description of the existing repository"
#     topics              = []

#     import = {
#       repository = "existing-repo"
#     }
#   }
# }
