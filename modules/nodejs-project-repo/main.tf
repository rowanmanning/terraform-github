
# Set up the repository with standard settings
resource "github_repository" "repository" {
  name        = var.name
  description = var.description
  visibility  = var.visibility
  auto_init   = true

  has_issues      = true
  has_discussions = false
  has_projects    = false
  has_wiki        = false
  has_downloads   = false

  allow_merge_commit     = false
  allow_squash_merge     = false
  allow_rebase_merge     = true
  allow_auto_merge       = true
  delete_branch_on_merge = true

  vulnerability_alerts = true
}

# Set the default branch
resource "github_branch" "default" {
  repository = github_repository.repository.name
  branch     = var.default_branch
}
resource "github_branch_default" "default" {
  repository = github_repository.repository.name
  branch     = github_branch.default.branch
}

# Manage the CODEOWNERS file
resource "github_repository_file" "repository_codeowners" {
  repository          = github_repository.repository.name
  branch              = github_branch_default.default.branch
  file                = ".github/CODEOWNERS"
  content             = templatefile("${path.module}/resources/files/CODEOWNERS.tftpl", { owner : var.owner })
  commit_message      = "chore: enforce codeowners format"
  commit_author       = "RowBot"
  commit_email        = "rowbot@rowanmanning.com"
  overwrite_on_create = true
}
