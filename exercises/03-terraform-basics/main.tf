# Exercise: Terraform Basics
# This exercise covers fundamental Terraform concepts

terraform {
  required_version = ">= 1.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}

# Generate a random ID for resource naming
resource "random_id" "suffix" {
  byte_length = 4
}

# Create multiple files using count
resource "local_file" "terraform_concepts" {
  count = length(var.terraform_concepts)
  
  filename = "${path.module}/concept-${count.index + 1}-${var.terraform_concepts[count.index]}.txt"
  content = templatefile("${path.module}/concept.tpl", {
    concept_name = var.terraform_concepts[count.index]
    concept_id   = count.index + 1
    total_concepts = length(var.terraform_concepts)
    timestamp    = timestamp()
    random_id    = random_id.suffix.hex
  })
}

# Demonstrate for_each with a map
resource "local_file" "provider_info" {
  for_each = var.provider_examples
  
  filename = "${path.module}/provider-${each.key}.txt"
  content = templatefile("${path.module}/provider.tpl", {
    provider_name = each.key
    provider_desc = each.value.description
    provider_url  = each.value.documentation_url
    use_cases     = join(", ", each.value.use_cases)
    timestamp     = timestamp()
  })
}