
# Configure the GitHub Provider
provider "github" {
  owner = var.owner
}

locals {
  nodejs_libraries = {
    allow-methods = {
      description = "Express/connect middleware to handle 405 errors."
    }
    dates-between = {
      description : "Get all of the dates between two given dates, with generators."
    }
    eslint-config = {
      description : "Shared linter configurations for my projects."
    }
    express-config = {
      description : "A library to configure Express in my preferred way."
    }
    fastify-htm-preact-views = {
      description : "Render Preact views via HTM in Fastify applications."
    }
    feed-parser = {
      description : "Parse RSS and Atom feeds."
    }
    fetch-feed = {
      description : "Fetch and parse RSS and Atom feeds."
    }
    get-all-emoji-in-a-slack-channel = {
      description : "Get all emoji in a public Slack channel."
    }
    get-all-messages-in-a-slack-channel = {
      description : "Get all messages in a public Slack channel."
    }
    get-error-http-status = {
      description = "Get the HTTP status code for an error object."
    }
    hijack-express-render = {
      description : "Override an Express application's render methods."
    }
    list-all-files = {
      description : "List all files in a directory recursively."
    }
    minecraft-inventory-inspector = {
      description : "Inspect the inventories and ender chests of players on a Vanilla Minecraft server, rendering results as Markdown."
    }
    not-found = {
      description : "Create Express middleware which results in an HTTP 404 Not Found error."
    }
    render-error-page = {
      description : "Render nice error pages with Express."
    }
    require-all = {
      description : "Require all modules in a directory recursively."
    }
    require-first = {
      description : "Require and return the first available module."
    }
    require-header = {
      description : "Express/connect middleware to handle errors where an expected header is missing."
    }
    response-redirect-middleware = {
      description : "A small convenience utility to generate Express middleware which redirects a request."
    }
    response-render-middleware = {
      description : "A small convenience utility to generate Express middleware which renders a view."
    }
    validate-project = {
      description : "A tool to validate my coding projects."
    }
    varname = {
      description : "Convert strings between different variable naming formats."
    }
    wikilike = {
      description : "Parse and render wiki-like links."
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
