variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name`, and `attributes`"
}

variable "enabled" {
  type        = bool
  description = "Whether to create these resources"
  default     = true
}

variable "name" {
  type        = string
  description = "Name  (e.g. `app` or `cluster`)"
}

variable "namespace" {
  type        = string
  description = "Namespace (e.g. `up` or `unionpos`)"
}

variable "role_arns" {
  type        = map(string)
  default     = {}
  description = "A map of alias -> IAM Role ARNs the users in the Group can assume"
}

variable "require_mfa" {
  type        = bool
  default     = false
  description = "Require the users to have MFA enabled"
}

variable "stage" {
  type        = string
  description = "Stage (e.g. `prod`, `dev`, `staging`, `infra`)"
}

variable "switchrole_url_template" {
  type        = string
  description = "URL template for the IAM console to switch to the roles"
  default     = "https://signin.aws.amazon.com/switchrole?account=%s&roleName=%s&displayName=%s"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}

variable "user_names" {
  type        = list(string)
  description = "A list of IAM User names to associate with the Group"
}
