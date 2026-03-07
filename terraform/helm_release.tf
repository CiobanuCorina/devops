provider "helm" {
  kubernetes = {
    host = var.openshift_api_url
    token = var.openshift_token
  }
}

resource "helm_release" "devops" {
  name       = "devops"
  repository      = "https://CiobanuCorina.github.io/devops"
  chart = "devops-chart"
  namespace  = var.namespace
}