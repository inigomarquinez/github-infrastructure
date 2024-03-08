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

  # When using the VCS-driven workflow for Terraform Cloud,
  # you do not need to define the cloud block in your configuration.
  # 🔗 https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-vcs-change
  # cloud {
  #   organization = "<ORGANIZATION_NAME>"

  #   workspaces {
  #     name = "<WORKSPACE_NAME>"
  #   }
  # }
}
