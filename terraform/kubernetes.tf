provider "kubernetes" {
  host = var.openshift_api_url
  token = var.openshift_token
}

data "kubernetes_service" "devops-service" {
  depends_on = [helm_release.devops-helm]
  metadata {
    name = "devops-service"
  }
}