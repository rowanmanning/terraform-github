
terraform {
  cloud {
    organization = "rowanmanning"
    workspaces {
      name = "github"
    }
  }
}
