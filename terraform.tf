terraform {

  cloud {
    organization = "unal-devops"

    workspaces {
      name = "parcial-terraform"
    }
  }

  required_version = ">= 1.1.0"
}
