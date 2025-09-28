variable "terraform_concepts" {
  description = "List of Terraform concepts to create files for"
  type        = list(string)
  default = [
    "providers",
    "resources",
    "variables",
    "outputs",
    "modules",
    "state"
  ]
  
  validation {
    condition     = length(var.terraform_concepts) > 0
    error_message = "At least one Terraform concept must be specified."
  }
}

variable "provider_examples" {
  description = "Map of provider examples with details"
  type = map(object({
    description        = string
    documentation_url  = string
    use_cases         = list(string)
  }))
  
  default = {
    aws = {
      description       = "Amazon Web Services provider for cloud resources"
      documentation_url = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs"
      use_cases        = ["EC2 instances", "S3 buckets", "VPCs", "RDS databases"]
    }
    local = {
      description       = "Local provider for local machine resources"
      documentation_url = "https://registry.terraform.io/providers/hashicorp/local/latest/docs"
      use_cases        = ["Local files", "Scripts", "Testing configurations"]
    }
    random = {
      description       = "Random provider for generating random values"
      documentation_url = "https://registry.terraform.io/providers/hashicorp/random/latest/docs"
      use_cases        = ["Random IDs", "Passwords", "Unique naming"]
    }
  }
}