Terraform Concept: ${upper(concept_name)}
=================================

Concept ID: ${concept_id} of ${total_concepts}
Generated on: ${timestamp}
Random ID: ${random_id}

This file demonstrates the following Terraform features:
- Template file usage with templatefile() function
- Variable interpolation with $${var.variable_name}
- Built-in functions like upper() and timestamp()
- Count meta-argument for creating multiple resources
- String interpolation and formatting

Key Learning Points for "${concept_name}":
%{ if concept_name == "providers" ~}
- Providers are plugins that Terraform uses to manage resources
- They are specified in the terraform {} block
- Each provider has its own documentation and resource types
%{ endif ~}
%{ if concept_name == "resources" ~}
- Resources are the building blocks of Terraform configurations
- They represent infrastructure objects like VMs, networks, etc.
- Syntax: resource "provider_type" "name" { ... }
%{ endif ~}
%{ if concept_name == "variables" ~}
- Variables make configurations flexible and reusable
- They can have types, defaults, and validation rules
- Access with var.variable_name
%{ endif ~}
%{ if concept_name == "outputs" ~}
- Outputs export values from your configuration
- Useful for sharing data between configurations
- Can be used in modules and remote state
%{ endif ~}
%{ if concept_name == "modules" ~}
- Modules are reusable Terraform configurations
- Enable code organization and sharing
- Can be local or from the Terraform Registry
%{ endif ~}
%{ if concept_name == "state" ~}
- State tracks the current status of your infrastructure
- Stored in terraform.tfstate file
- Can be local or remote for team collaboration
%{ endif ~}

Remember: This is concept ${concept_id} of ${total_concepts} total concepts!