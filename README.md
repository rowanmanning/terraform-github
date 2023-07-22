
# Terraform GitHub

This is a (experimental) repo used to manage Rowan Manning's GitHub account via Terraform.


## Required environment variables

  * `GITHUB_TOKEN` to authenticate with GitHub and apply changes


## Import repos

Run the following replacing as follows:

 * `$TOKEN` should be a valid GitHub auth token
 * `$NAME` should be the terraform module name of the repo you want to import
 * `$REPO_NAME` should be the name of the repository

```
GITHUB_TOKEN=$TOKEN terraform import module.$NAME.github_repository.repository $REPO_NAME
```
