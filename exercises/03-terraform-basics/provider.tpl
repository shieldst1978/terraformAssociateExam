Provider: ${upper(provider_name)}
====================

Description: ${provider_desc}
Documentation: ${provider_url}
Generated: ${timestamp}

Common Use Cases:
${use_cases}

This file demonstrates:
- for_each meta-argument usage
- Working with map variables
- Accessing each.key and each.value
- Complex variable types (objects)

Provider Configuration Example:
terraform {
  required_providers {
    ${provider_name} = {
      source  = "hashicorp/${provider_name}"
      version = "~> 2.0"  # Use appropriate version
    }
  }
}

Next Steps:
1. Explore the ${provider_name} provider documentation
2. Try creating resources with this provider
3. Learn about provider-specific authentication methods