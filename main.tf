
module "get-error-http-status" {
  source      = "./modules/nodejs-project-repo"
  owner       = var.owner
  name        = "get-error-http-status"
  description = "Get the HTTP status code for an error object."
}
