terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "random_string" "random" { 
    length = 6
    special = false
    upper = false
}

output "test_output" { 
    value = random_string.random.id
}
