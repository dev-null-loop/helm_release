output "id" {
  value = helm_release.this.id
}

output "name" {
  value = helm_release.this.name
}

output "namespace" {
  value = helm_release.this.namespace
}

output "status" {
  value = helm_release.this.status
}

output "metadata" {
  value = helm_release.this.metadata
}

output "manifest" {
  value     = helm_release.this.manifest
  sensitive = true
}

output "release" {
  value     = helm_release.this
  sensitive = true
}
