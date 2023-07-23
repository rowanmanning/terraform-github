
# Terraform GitHub

This is a (experimental) repo used to manage Rowan Manning's GitHub account via Terraform.

* [Local development](#local-development)
* [Required environment variables](#required-environment-variables)
* [How to import a repo](#how-to-import-a-repo)


## Local development

  * [Install Terraform](https://developer.hashicorp.com/terraform/downloads)
  * Clone this repo
  * Install development dependencies with `npm install` (used to verify commit messages)
  * Run `terraform init`


## Required environment variables

  * `GITHUB_TOKEN` to authenticate with GitHub and apply changes


## How to import a repo

Run the following replacing as follows:

 * `$TOKEN` should be a valid GitHub auth token
 * `$NAME` should be the terraform module name of the repo you want to import
 * `$REPO_NAME` should be the name of the repository

```
GITHUB_TOKEN=$TOKEN terraform import module.$NAME.github_repository.repository $REPO_NAME
```
