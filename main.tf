
# Configure the GitHub Provider
provider "github" {
  owner = var.owner
}

locals {
  nodejs_libraries = {
    allow-methods = {
      description = "Express/connect middleware to handle 405 errors."
    }
    get-error-http-status = {
      description = "Get the HTTP status code for an error object."
    }
  }
}

module "nodejs-library-repositories" {
  source      = "./modules/nodejs-project-repo"
  for_each    = local.nodejs_libraries
  owner       = var.owner
  name        = each.key
  description = each.value.description
}
