resource "helm_release" "current" {
  for_each = var.create ? var.releases : []

  name             = lookup(each.value, "name", each.key)
  description      = lookup(each.value, "description", null)
  namespace        = lookup(each.value, "namespace", null)
  create_namespace = lookup(each.value, "create_namespace", null)
  chart            = lookup(each.value, "chart", null)
  version          = lookup(each.value, "version", null)
  repository       = lookup(each.value, "repository", null)
  values           = lookup(each.value, "values", [])

  timeout                    = lookup(each.value, "timeout", null)
  repository_key_file        = lookup(each.value, "repository_key_file", null)
  repository_cert_file       = lookup(each.value, "repository_cert_file", null)
  repository_ca_file         = lookup(each.value, "repository_ca_file", null)
  repository_username        = lookup(each.value, "repository_username", null)
  repository_password        = lookup(each.value, "repository_password", null)
  devel                      = lookup(each.value, "devel", null)
  verify                     = lookup(each.value, "verify", null)
  keyring                    = lookup(each.value, "keyring", null)
  disable_webhooks           = lookup(each.value, "disable_webhooks", null)
  reuse_values               = lookup(each.value, "reuse_values", null)
  reset_values               = lookup(each.value, "reset_values", null)
  force_update               = lookup(each.value, "force_update", null)
  recreate_pods              = lookup(each.value, "recreate_pods", null)
  cleanup_on_fail            = lookup(each.value, "cleanup_on_fail", null)
  max_history                = lookup(each.value, "max_history", null)
  atomic                     = lookup(each.value, "atomic", null)
  skip_crds                  = lookup(each.value, "skip_crds", null)
  render_subchart_notes      = lookup(each.value, "render_subchart_notes", null)
  disable_openapi_validation = lookup(each.value, "disable_openapi_validation", null)
  wait                       = lookup(each.value, "wait", false)
  wait_for_jobs              = lookup(each.value, "wait_for_jobs", null)
  dependency_update          = lookup(each.value, "dependency_update", null)
  replace                    = lookup(each.value, "replace", null)
  lint                       = lookup(each.value, "lint", null)

  dynamic "postrender" {
    for_each = lookup(each.value, "postrender", [])

    content {
      binary_path = postrender.value.binary_path
      args        = try(postrender.value.args, null)
    }
  }

  dynamic "set" {
    for_each = lookup(each.value, "set", [])

    content {
      name  = set.value.name
      value = set.value.value
      type  = try(set.value.type, null)
    }
  }

  dynamic "set_sensitive" {
    for_each = lookup(each.value, "set_sensitive", [])

    content {
      name  = set_sensitive.value.name
      value = set_sensitive.value.value
      type  = try(set_sensitive.value.type, null)
    }
  }

  depends_on = [
    var.depends
  ]
}
