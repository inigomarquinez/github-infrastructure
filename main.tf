module "repositories" {
  source = "./repositories"
}

#-------------------------------------------------------------------------------
# Example to import an existing repository to the Terraform state.
# Take a look at `repositories/main.tf` file too.
#-------------------------------------------------------------------------------

# import {
#   to = module.repositories.module.repository_existing-repo.github_repository.repository
#   id = "existing-repo"
# }

import {
  to = module.repositories.module.repository_challenge-phone-catalog-app.github_repository.repository
  id = "challenge-phone-catalog-app"
}