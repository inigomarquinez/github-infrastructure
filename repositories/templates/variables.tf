# 🔗 https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection#argument-reference
variable "github_branch_protection" {
  description = "input values for github_branch_protection resource"

  type = object({
    pattern                         = optional(string, "main")
    enforce_admins                  = optional(bool, false)
    require_signed_commits          = optional(bool, true)
    required_linear_history         = optional(bool, true)
    require_conversation_resolution = optional(bool, true)
    force_push_bypassers            = optional(list(string), [])
    allows_deletions                = optional(bool, false)
    allows_force_pushes             = optional(bool, false)
    lock_branch                     = optional(bool, false)

    required_status_checks = optional(object({
      strict   = optional(bool, true)
      contexts = optional(list(string), [])
    }), {})

    required_pull_request_reviews = optional(object({
      dismiss_stale_reviews           = optional(bool, true)
      restrict_dismissals             = optional(bool, false)
      dismissal_restrictions          = optional(list(string), null)
      pull_request_bypassers          = optional(list(string), [])
      require_code_owner_reviews      = optional(bool, true)
      required_approving_review_count = optional(number, 0)
      require_last_push_approval      = optional(bool, true)
    }), {})
  })

  default = {}
}

variable "github_repository" {
  description = "input values for github_repository resource"

  type = object({
    name                                    = string
    description                             = string
    homepage_url                            = optional(string)
    visibility                              = optional(string, "public")
    has_issues                              = optional(bool, true)
    has_discussions                         = optional(bool, false)
    has_projects                            = optional(bool, false)
    has_wiki                                = optional(bool, false)
    is_template                             = optional(bool, false)
    allow_merge_commit                      = optional(bool, false)
    allow_squash_merge                      = optional(bool, true)
    allow_rebase_merge                      = optional(bool, false)
    allow_auto_merge                        = optional(bool, false)
    squash_merge_commit_title               = optional(string, "COMMIT_OR_PR_TITLE")
    squash_merge_commit_message             = optional(string, "COMMIT_MESSAGES")
    merge_commit_title                      = optional(string, null)
    merge_commit_message                    = optional(string, null)
    delete_branch_on_merge                  = optional(bool, true)
    web_commit_signoff_required             = optional(bool, true)
    has_downloads                           = optional(bool, false)
    auto_init                               = optional(bool, true)
    gitignore_template                      = optional(string, "Node")
    license_template                        = optional(string, "mit")
    archived                                = optional(bool, false)
    archive_on_destroy                      = optional(bool, true)
    topics                                  = optional(list(string), [])
    vulnerability_alerts                    = optional(bool, true)
    ignore_vulnerability_alerts_during_read = optional(bool, true)
    allow_update_branch                     = optional(bool, true)

    enable_pages                            = optional(bool, false) # whether to enable GitHub Pages
    pages_branch                            = optional(string, null) # the branch to use for GitHub Pages
    pages_build_type                        = optional(string, "workflow") # the build type of the GitHub Pages
    pages_cname                             = optional(string, null) # the custom domain of the GitHub Pages
    pages_path                              = optional(string, null) # the path to the GitHub Pages content

    pages = optional(object({
      source = optional(object({
        branch = optional(string, null)
        path   = optional(string, null)
      }), null)
      build_type = optional(string, null)
      cname      = optional(string, null)
    }), null)

    security_and_analysis = optional(object({
      advanced_security = optional(object({
        status = string
      }), {
        status = "enabled"
      })
      secret_scanning = optional(object({
        status = string
      }), {
        status = "enabled"
      })
      secret_scanning_push_protection = optional(object({
        status = string
      }), {
        status = "enabled"
      })
    }), {})

    template = optional(object({
      owner                = string
      repository           = string
      include_all_branches = bool
    }), null)
  })
}
