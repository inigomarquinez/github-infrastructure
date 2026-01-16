################################################################################
# Manage GitHub REPOSITORIES.
#
# Repository modules are organized by category in separate files:
# - repositories-special.tf: Special repositories (.github, profile, website)
# - repositories-general.tf: General projects
# - repositories-challenges.tf: Challenge repositories
# - repositories-katas.tf: Kata repositories
# - repositories-learning.tf: Learning repositories
# - repositories-pocs.tf: POC repositories
################################################################################

#-------------------------------------------------------------------------------
# Example to import an existing repository to the Terraform state.
# Take a look at the root `main.tf` file too.
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
