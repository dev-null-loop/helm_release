resource "helm_release" "this" {
  name                       = var.name
  chart                      = var.chart
  version                    = var.chart_version
  repository                 = var.repository
  namespace                  = var.namespace
  create_namespace           = var.create_namespace
  timeout                    = var.timeout
  values                     = var.values
  atomic                     = false
  cleanup_on_fail            = false
  dependency_update          = false
  disable_crd_hooks          = false
  disable_openapi_validation = false
  disable_webhooks           = false
  force_update               = false
  lint                       = false
  max_history                = 0
  pass_credentials           = false
  recreate_pods              = false
  render_subchart_notes      = true
  replace                    = false
  reset_values               = false
  reuse_values               = false
  skip_crds                  = false
  verify                     = false
  wait                       = true
  wait_for_jobs              = false
  # dynamic "set" {
  #   for_each = var.set != [] ? var.set : []
  #   iterator = s
  #   content {
  #     name  = s.value.name
  #     value = s.value.value
  #   }
  # }
  # dynamic "set_list" {
  #   for_each = try(var.set_list, {})
  #   iterator = s
  #   content {
  #     name  = s.value.name
  #     value = s.value.list
  #   }
  # }
  # dynamic "set_sensitive" {
  #   for_each = try(var.set_sensitive, {})
  #   iterator = s
  #   content {
  #     name  = s.value.name
  #     value = base64encode(file(s.value.secret_file))
  #   }
  # }
}
