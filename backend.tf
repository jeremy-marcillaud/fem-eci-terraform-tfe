terraform {
  cloud {
    organization = "master-dev"

    workspaces {
      name = "fem-eci-tfe"
    }
  }
}