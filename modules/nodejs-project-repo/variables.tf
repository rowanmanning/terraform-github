
variable "owner" {
  description = "The GitHub account the repository should be added to"
  type        = string
}

variable "name" {
  description = "Name of the repository"
  type        = string
}

variable "description" {
  description = "Short description of the repository"
  type        = string
}

variable "license" {
  description = "The project license"
  type        = string
  nullable    = true
  default     = "MIT"
}

variable "visibility" {
  description = "The visiblity of the repository on GitHub"
  type        = string
  default     = "public"
}

variable "default_branch" {
  description = "The default branch to use for the repository"
  type        = string
  default     = "main"
}

variable "license_year" {
  description = "The year to add to license files"
  type        = number
  default     = 2023
}
