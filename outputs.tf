output "iam_role_policies_lookup_policy_names" {
  description = "Map of policy_names values across all iam_role_policies_lookup, keyed the same as var.iam_role_policies_lookup"
  value       = { for k, v in data.aws_iam_role_policies.iam_role_policies_lookup : k => v.policy_names if v.policy_names != null && length(v.policy_names) > 0 }
}
output "iam_role_policies_lookup_role_name" {
  description = "Map of role_name values across all iam_role_policies_lookup, keyed the same as var.iam_role_policies_lookup"
  value       = { for k, v in data.aws_iam_role_policies.iam_role_policies_lookup : k => v.role_name if v.role_name != null && length(v.role_name) > 0 }
}

