data "aws_iam_role_policies" "iam_role_policies_lookup" {
  for_each = var.iam_role_policies_lookup

  role_name = each.value.role_name
}

