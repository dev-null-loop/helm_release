resource "helm_release" "this" {
  atomic                     = var.atomic
  chart                      = var.chart
  cleanup_on_fail            = false
  create_namespace           = false
  dependency_update          = false
  disable_crd_hooks          = false
  disable_openapi_validation = false
  disable_webhooks           = false
  force_update               = false
  lint                       = false
  max_history                = var.max_history
  name                       = var.name
  namespace                  = var.namespace
  pass_credentials           = false
  recreate_pods              = false
  render_subchart_notes      = true
  replace                    = false
  repository                 = var.repository
  reset_values               = false
  reuse_values               = false
  dynamic "set" {
    for_each = var.set[*]
    content {
      name  = set.key
      value = set.value
    }
  }

  # set = [
  #   {
  #     name  = "server.service.type"
  #     value = "LoadBalancer"
  #   }
  # ]
  skip_crds     = false
  status        = var.status
  timeout       = 300
  verify        = false
  version       = var.version
  wait          = true
  wait_for_jobs = false
}
