# -----------------------------------------------------------------------------
# Configure the Terraform Cloud backend.
# -----------------------------------------------------------------------------

terraform {
  required_version = ">= 1.1.2"

  required_providers {
    # The GitHub provider is used to interact with GitHub resources.
    # 🔗 https://registry.terraform.io/providers/integrations/github/latest/docs
    github = {
      source  = "integrations/github"
      version = "6.0.1"
    }
  }

  cloud {
    organization = "inigomarquinez"

    workspaces {
      name = "github-infrastructure"
    }
  }
}
