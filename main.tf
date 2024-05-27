################################################################################
# Example to import an existing repository to the Terraform state.
# Take a look at `repositories/main.tf` file too.
################################################################################
# import {
#   to = module.repositories.module.repository_existing-repo.github_repository.repository
#   id = "existing-repo"
# }

import {
  to = module.repositories.module.repository_github.github_repository.repository
  id = ".github"
}

module "repositories" {
  source = "./repositories"
}
