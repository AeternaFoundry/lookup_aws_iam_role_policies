variable "iam_role_policies_lookup" {
  description = <<EOT
Map of iam_role_policies_lookup, attributes below
Required:
    - role_name
EOT

  type = map(object({
    role_name = string
  }))
}

