################################################################################
# Example to import an existing repository to the Terraform state.
# Take a look at `repositories/main.tf` file too.
################################################################################
# import {
#   to = module.repositories.module.repository_existing-repo.github_repository.repository
#   id = "existing-repo"
# }

module "repositories" {
  source = "./repositories"
}

import {
  to = module.repositories.module.repository_advent-of-code.github_repository.repository
  id = "advent-of-code"
}
