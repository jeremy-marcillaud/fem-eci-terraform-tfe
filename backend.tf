terraform {
  required_version = "1.17.0"

  cloud {
    
    organization = "master-dev"

    workspaces {
      name = "fem-eci-tfe"
    }
  }
}