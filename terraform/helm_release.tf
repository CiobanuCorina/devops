provider "helm" {
  kubernetes = {
    host = var.openshift_api_url
    token = var.openshift_token
  }
}

resource "helm_release" "devops" {
  name       = "devops"
  chart      = file("${path.module}/helm-chart")
  namespace  = var.namespace
}