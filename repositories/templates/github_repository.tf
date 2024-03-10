# -----------------------------------------------------------------------------
# ℹ️ This resource allows you to create and manage repositories within your
#    GitHub organization or personal account.
# 🔗 https://registry.terraform.io/provgit checkoiders/integrations/github/latest/docs/resources/repository
# -----------------------------------------------------------------------------

locals {
  github_repository = var.github_repository
}

resource "github_repository" "repository" {
  name                                    = local.github_repository.name
  description                             = local.github_repository.description
  homepage_url                            = local.github_repository.homepage_url
  visibility                              = local.github_repository.visibility
  has_issues                              = local.github_repository.has_issues
  has_discussions                         = local.github_repository.has_discussions
  has_projects                            = local.github_repository.has_projects
  has_wiki                                = local.github_repository.has_wiki
  is_template                             = local.github_repository.is_template
  allow_merge_commit                      = local.github_repository.allow_merge_commit
  allow_squash_merge                      = local.github_repository.allow_squash_merge
  allow_rebase_merge                      = local.github_repository.allow_rebase_merge
  allow_auto_merge                        = local.github_repository.allow_auto_merge
  squash_merge_commit_title               = local.github_repository.squash_merge_commit_title
  squash_merge_commit_message             = local.github_repository.squash_merge_commit_message
  merge_commit_title                      = local.github_repository.merge_commit_title
  merge_commit_message                    = local.github_repository.merge_commit_message
  delete_branch_on_merge                  = local.github_repository.delete_branch_on_merge
  web_commit_signoff_required             = local.github_repository.web_commit_signoff_required
  has_downloads                           = local.github_repository.has_downloads
  auto_init                               = local.github_repository.auto_init
  gitignore_template                      = local.github_repository.gitignore_template
  license_template                        = local.github_repository.license_template
  archived                                = local.github_repository.archived
  archive_on_destroy                      = local.github_repository.archive_on_destroy
  topics                                  = local.github_repository.topics
  vulnerability_alerts                    = local.github_repository.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = local.github_repository.ignore_vulnerability_alerts_during_read
  allow_update_branch                     = local.github_repository.allow_update_branch

  dynamic "pages" {
    for_each = local.github_repository.pages == null ? [] : [1]

    content {
      source {
        branch = local.github_repository.pages.source.branch
        path   = local.github_repository.pages.source.path
      }
      build_type = local.github_repository.pages.build_type
      cname      = local.github_repository.pages.cname
    }
  }

  dynamic "security_and_analysis" {
    for_each = local.github_repository.security_and_analysis == null ? [] : [1]

    content {
      # If a repository's visibility is public, advanced_security is always
      # enabled and cannot be changed, so this setting cannot be supplied.
      dynamic "advanced_security" {
        for_each = local.github_repository.visibility == "public" ? [] : [1]

        content {
          status = local.github_repository.security_and_analysis.advanced_security.status
        }
      }

      secret_scanning {
        status = local.github_repository.security_and_analysis.secret_scanning.status
      }

      secret_scanning_push_protection {
        status = local.github_repository.security_and_analysis.secret_scanning_push_protection.status
      }
    }
  }

  dynamic "template" {
    for_each = local.github_repository.template == null ? [] : [1]

    content {
      owner                = local.github_repository.template.owner
      repository           = local.github_repository.template.name
      include_all_branches = local.github_repository.template.include_all_branches
    }
  }

  lifecycle {
    ignore_changes = [
      auto_init,
      license_template,
      gitignore_template,
      template,
    ]
  }
}
