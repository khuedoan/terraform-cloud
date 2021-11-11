output "ci_token" {
  value       = tfe_organization_token.ci.token
  description = "Organization token for CI tools"
  sensitive   = true
}
