# Author - Alexandre S. Cezar

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.52.0"
    }
    kubernetes = {
    }
    kubectl = {
      source = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}

