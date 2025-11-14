output "releases" {
  value       = { for k, v in var.releases : k => helm_release.current }
  description = "A map of release names to their respective resource outputs."
}
