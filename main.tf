import {
  to = module.repositories.module.repository_base-configs.github_repository.repository
  id = "base-configs"
}

module "repositories" {
  source = "./repositories"
}
