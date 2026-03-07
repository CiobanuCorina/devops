variable "openshift_api_url" {
  type        = string
  description = "URL for openshift"
}

variable "openshift_token" {
  type        = string
  description = "Token for openshift"
  sensitive   = true
}

variable "namespace" {
  type        = string
  description = "Namespace to deploy to - we are constrained to namespace in OpenShift sandbox env"
}