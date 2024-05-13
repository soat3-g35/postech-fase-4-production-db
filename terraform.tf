# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {

  cloud {
    organization = "DevopsFiapSoat3-G35"
    workspaces {
      name = "postech-fase-4-production-db"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.20.0"
    }
    postgresql = { # This line is what needs to change.
      source = "cyrilgdn/postgresql"
      version = "1.15.0"
    }
  }
}
