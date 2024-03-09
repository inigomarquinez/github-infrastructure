# 🔗 https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default#argument-reference
# variable "github_branch_default" {
#   description = "input values for github_branch_default resource"

#   type = object({
#     branch = string,
#     rename = optional(bool)
#   })

#   default = {
#     branch = "main"
#     rename = false
#   }
# }

# 🔗 https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection#argument-reference
variable "github_branch_protection" {
  description = "input values for github_branch_protection resource"

  type = object({
    pattern                         = optional(string),
    enforce_admins                  = optional(bool),
    require_signed_commits          = optional(bool),
    required_linear_history         = optional(bool),
    require_conversation_resolution = optional(bool),
    force_push_bypassers            = optional(list(string)),
    allows_deletions                = optional(bool),
    allows_force_pushes             = optional(bool),
    lock_branch                     = optional(bool),

    required_status_checks = optional(object({
      strict   = optional(bool),
      contexts = optional(list(string))
    })),

    required_pull_request_reviews = optional(object({
      dismiss_stale_reviews           = optional(bool),
      restrict_dismissals             = optional(bool),
      dismissal_restrictions          = optional(list(string)),
      pull_request_bypassers          = optional(list(string)),
      require_code_owner_reviews      = optional(bool),
      required_approving_review_count = optional(number),
      require_last_push_approval      = optional(bool)
    })),

    restrict_pushes = optional(object({
      blocks_creations = optional(bool),
      push_allowances  = optional(list(string))
    }))
  })

  default = {
    pattern                         = "main",
    enforce_admins                  = true,
    require_signed_commits          = true,
    required_linear_history         = true,
    require_conversation_resolution = true,
    force_push_bypassers            = [],
    allows_deletions                = false,
    allows_force_pushes             = false,
    lock_branch                     = false,

    required_status_checks = {
      strict   = true,
      contexts = []
    },

    required_pull_request_reviews = {
      dismiss_stale_reviews           = true,
      restrict_dismissals             = true,
      dismissal_restrictions          = [],
      pull_request_bypassers          = [],
      require_code_owner_reviews      = true,
      required_approving_review_count = 1,
      require_last_push_approval      = true
    },

    restrict_pushes = {
      blocks_creations = true,
      push_allowances  = []
    }
  }
}

# 🔗 https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#argument-reference
variable "github_repository" {
  description = "input values for github_repository resource"

  type = object({
    name                                    = string,
    description                             = string,
    homepage_url                            = optional(string),
    visibility                              = string,
    has_issues                              = bool,
    has_discussions                         = bool,
    has_projects                            = bool,
    has_wiki                                = bool,
    is_template                             = bool,
    allow_merge_commit                      = bool,
    allow_squash_merge                      = bool,
    allow_rebase_merge                      = bool,
    allow_auto_merge                        = bool,
    squash_merge_commit_title               = string,
    squash_merge_commit_message             = string,
    merge_commit_title                      = optional(string),
    merge_commit_message                    = optional(string),
    delete_branch_on_merge                  = bool,
    web_commit_signoff_required             = bool,
    has_downloads                           = bool,
    auto_init                               = bool,
    gitignore_template                      = string,
    license_template                        = string,
    archived                                = bool,
    archive_on_destroy                      = bool,
    topics                                  = optional(list(string)),
    vulnerability_alerts                    = bool,
    ignore_vulnerability_alerts_during_read = bool,
    allow_update_branch                     = bool,

    pages = object({
      source = object({
        branch = string,
        path   = string
      }),
      build_type = string,
      cname = string
    }),

    security_and_analysis = object({
      advanced_security = object({
        status = string
      }),
      secret_scanning = object({
        status = string
      }),
      secret_scanning_push_protection = object({
        status = string
      })
    }),

    template = object({
      owner      = string
      repository = string,
      include_all_branches = bool
    })
  })

  default = {
    visibility                              = "public",
    has_issues                              = true,
    has_discussions                         = false,
    has_projects                            = false,
    has_wiki                                = false,
    is_template                             = false,
    allow_merge_commit                      = false,
    allow_squash_merge                      = true,
    allow_rebase_merge                      = false,
    allow_auto_merge                        = false,
    squash_merge_commit_title               = "COMMIT_OR_PR_TITLE",
    squash_merge_commit_message             = "COMMIT_MESSAGES",
    delete_branch_on_merge                  = true,
    web_commit_signoff_required             = true,
    has_downloads                           = false,
    auto_init                               = true,
    gitignore_template                      = "Node",
    license_template                        = "mit",
    archived                                = false,
    archive_on_destroy                      = true,
    vulnerability_alerts                    = true,
    ignore_vulnerability_alerts_during_read = true,
    allow_update_branch                     = true,
    pages                                   = null,

    security_and_analysis = {
      advanced_security = {
        status = "enabled"
      },
      secret_scanning = {
        status = "enabled"
      },
      secret_scanning_push_protection = {
        status = "enabled"
      }
    },

    template                                = null
  }
}
