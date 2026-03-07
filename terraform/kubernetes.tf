provider "kubernetes" {
  host = var.openshift_api_url
  token = var.openshift_token
}