# -----------------------------------------------------------------------------
# ℹ️ This resource allows you to configure branch protection for a given
#    repository.
# 🔗 https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection
# -----------------------------------------------------------------------------

locals {
  github_branch_protection = var.github_branch_protection
}

resource "github_branch_protection" "branch_protection" {
  depends_on                      = [
    github_repository.repository,
    github_branch_default.branch_default
  ]

  repository_id                   = github_repository.repository.name

  pattern                         = local.github_branch_protection.pattern
  enforce_admins                  = local.github_branch_protection.enforce_admins
  require_signed_commits          = local.github_branch_protection.require_signed_commits
  required_linear_history         = local.github_branch_protection.required_linear_history
  require_conversation_resolution = local.github_branch_protection.require_conversation_resolution
  force_push_bypassers            = local.github_branch_protection.force_push_bypassers
  allows_deletions                = local.github_branch_protection.allows_deletions
  allows_force_pushes             = local.github_branch_protection.allows_force_pushes
  lock_branch                     = local.github_branch_protection.lock_branch

  dynamic "required_status_checks" {
    for_each = local.github_branch_protection.required_status_checks == null ? [] : [1]

    content {
      strict    = local.github_branch_protection.required_status_checks.strict
      contexts  = local.github_branch_protection.required_status_checks.contexts
    }
  }

  dynamic "required_pull_request_reviews" {
    for_each = local.github_branch_protection.required_pull_request_reviews == null ? [] : [1]

    content {
      dismiss_stale_reviews           = local.github_branch_protection.required_pull_request_reviews.dismiss_stale_reviews
      restrict_dismissals             = local.github_branch_protection.required_pull_request_reviews.restrict_dismissals
      dismissal_restrictions          = local.github_branch_protection.required_pull_request_reviews.dismissal_restrictions
      pull_request_bypassers          = local.github_branch_protection.required_pull_request_reviews.pull_request_bypassers
      require_code_owner_reviews      = local.github_branch_protection.required_pull_request_reviews.require_code_owner_reviews
      required_approving_review_count = local.github_branch_protection.required_pull_request_reviews.required_approving_review_count
      require_last_push_approval      = local.github_branch_protection.required_pull_request_reviews.require_last_push_approval
    }
  }

  dynamic "restrict_pushes" {
    for_each = local.github_branch_protection.restrict_pushes == null ? [] : [1]

    content {
      blocks_creations = local.github_branch_protection.restrict_pushes.blocks_creations
      push_allowances  = local.github_branch_protection.restrict_pushes.push_allowances
    }
  }
}
