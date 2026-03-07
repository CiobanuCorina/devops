provider "kubernetes" {
  host = var.openshift_api_url
  token = var.openshift_token
}

data "kubernetes_service" "devops" {
  depends_on = [helm_release.devops]
  metadata {
    name = "devops"
  }
}