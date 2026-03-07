provider "kubernetes" {
  host = var.openshift_api_url
  token = var.openshift_token
}

data "kubernetes_service_v1" "devops_service" {
  depends_on = [helm_release.devops_helm]
  metadata {
    name = "devops-service"
  }
  namespace  = var.namespace
}