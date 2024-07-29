terraform {
  required_providers {
    ovh = {
      source  = "ovh/ovh"
    }
    helm = {
      source = "hashicorp/helm"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    } 
  }
}

provider "ovh" {
  endpoint           = "${var.ovh[0].endpoint}"
  application_key    = "${var.ovh[0].application_key}"
  application_secret = "${var.ovh[0].application_secret}"
  consumer_key       = "${var.ovh[0].consumer_key}"
}

