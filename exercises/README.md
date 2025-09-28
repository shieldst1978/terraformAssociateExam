# Terraform Associate Exam Exercises

This directory contains hands-on practice exercises organized by exam objectives.

## Exercise Structure

Each exercise directory contains:
- `main.tf` - Primary Terraform configuration
- `variables.tf` - Variable definitions
- `outputs.tf` - Output definitions
- `README.md` - Exercise instructions and objectives
- `terraform.tfvars.example` - Example variable values

## Exercises by Objective

### Objective 1: Understand Infrastructure as Code (IaC) concepts
- [ ] `01-iac-concepts/` - Introduction to IaC principles

### Objective 2: Understand the purpose of Terraform (vs other IaC)
- [ ] `02-terraform-vs-others/` - Terraform comparison with other tools

### Objective 3: Understand Terraform basics
- [ ] `03-terraform-basics/` - Basic Terraform syntax and structure
- [ ] `03-providers-resources/` - Working with providers and resources

### Objective 4: Use Terraform outside of core workflow
- [ ] `04-terraform-import/` - Importing existing infrastructure
- [ ] `04-terraform-console/` - Using Terraform console

### Objective 5: Interact with Terraform modules
- [ ] `05-module-basics/` - Creating and using modules
- [ ] `05-module-registry/` - Working with Terraform Registry modules

### Objective 6: Use the core Terraform workflow
- [ ] `06-terraform-workflow/` - Init, Plan, Apply, Destroy workflow
- [ ] `06-terraform-commands/` - Common Terraform commands

### Objective 7: Implement and maintain state
- [ ] `07-local-state/` - Understanding local state
- [ ] `07-remote-state/` - Remote state configuration
- [ ] `07-state-locking/` - State locking mechanisms

### Objective 8: Read, generate, and modify configuration
- [ ] `08-configuration-syntax/` - HCL syntax and structure
- [ ] `08-functions-expressions/` - Built-in functions and expressions
- [ ] `08-conditionals-loops/` - Conditional expressions and loops

### Objective 9: Understand Terraform Cloud capabilities
- [ ] `09-terraform-cloud/` - Terraform Cloud features and benefits

## Getting Started

1. Navigate to any exercise directory
2. Read the README.md for specific instructions
3. Copy `terraform.tfvars.example` to `terraform.tfvars` and fill in values
4. Run the standard Terraform workflow:
   ```bash
   terraform init
   terraform plan
   terraform apply
   terraform destroy  # When finished
   ```

## Tips

- Always read the exercise README first
- Start with basic exercises and progress to advanced ones
- Clean up resources after each exercise to avoid costs
- Take notes on what you learn in each exercise