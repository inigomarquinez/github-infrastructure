# -----------------------------------------------------------------------------
# Manage GitHub REPOSITORIES.
# -----------------------------------------------------------------------------

# module "repository_test-repo" {
#   source = "./templates"

#   github_repository = {
#     name                = "test-repo",
#     description         = "This is a test repository",
#     topics              = ["terraform", "github", "test"],
#     archive_on_destroy  = false
#   }
# }

# module "repository_slides" {
#   source = "./templates"

#   github_repository = {
#     name                = "slides",
#     description         = "🎞️ Slides of all my presentations made with revealjs",
#     topics              = ["slides", "revealjs", "inigomarquinez"],
#     archive_on_destroy  = false
#   }
# }