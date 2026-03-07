terraform {
  cloud {
    organization = "coriolesea"
    workspaces {
      name = "devops"
    }
  }
}