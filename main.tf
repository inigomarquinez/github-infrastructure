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
  to = module.repositories.module.repository_advent-repo.github_repository.repository
  id = "advent-of-code"
}

import {
  to = module.repositories.module.repository_challenge-sinusoidal-wave-form.github_repository.repository
  id = "challenge-sinusoidal-wave-form"
}

import {
  to = module.repositories.module.repository_inigomarquinez.github_repository.repository
  id = "inigomarquinez"
}


import {
  to = module.repositories.module.repository_kata-gilded-rose.github_repository.repository
  id = "kata-gilded-rose"
}
import {
  to = module.repositories.module.repository_kata-look-and-say-sequence.github_repository.repository
  id = "kata-look-and-say-sequence"
}
import {
  to = module.repositories.module.repository_kata-ohce.github_repository.repository
  id = "kata-ohce"
}