terraform {
  required_providers {
    ovh = {
      source  = "ovh/ovh"
    }
  }
}

provider "ovh" {
  endpoint           = "{endpoint}" #ovh-eu
  application_key    = "{application_key}"
  application_secret = "{application_secret}"
  consumer_key       = "{consumer_key}"
}

