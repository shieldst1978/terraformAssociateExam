# Exercise 3: Terraform Basics

This exercise covers fundamental Terraform concepts and demonstrates key features used in the Terraform Associate exam.

## Learning Objectives

After completing this exercise, you will understand:
- Terraform configuration structure and syntax
- Using multiple providers in a single configuration
- Working with variables (lists and complex objects)
- Using template files with conditional logic
- Count and for_each meta-arguments
- Built-in functions and expressions
- Outputs and their uses

## Terraform Concepts Covered

This exercise demonstrates the following exam topics:
- **Objective 3**: Understand Terraform basics
- **Objective 8**: Read, generate, and modify configuration

## Key Features Demonstrated

### 1. Multiple Providers
```hcl
terraform {
  required_providers {
    local = { source = "hashicorp/local" }
    random = { source = "hashicorp/random" }
  }
}
```

### 2. Count Meta-Argument
```hcl
resource "local_file" "terraform_concepts" {
  count = length(var.terraform_concepts)
  # Creates multiple resources based on list length
}
```

### 3. For_Each Meta-Argument
```hcl
resource "local_file" "provider_info" {
  for_each = var.provider_examples
  # Creates resources based on map keys
}
```

### 4. Complex Variables
```hcl
variable "provider_examples" {
  type = map(object({
    description = string
    use_cases  = list(string)
  }))
}
```

### 5. Template Files with Conditionals
```hcl
%{ if concept_name == "providers" ~}
- Providers are plugins...
%{ endif ~}
```

## Instructions

1. **Navigate to the exercise directory:**
   ```bash
   cd exercises/03-terraform-basics
   ```

2. **Initialize Terraform:**
   ```bash
   terraform init
   ```

3. **Review the configuration:**
   ```bash
   terraform validate
   terraform fmt
   ```

4. **Plan the deployment:**
   ```bash
   terraform plan
   ```

5. **Apply the configuration:**
   ```bash
   terraform apply
   ```

6. **Examine the created files:**
   ```bash
   ls -la *.txt
   cat concept-1-providers.txt
   cat provider-aws.txt
   ```

7. **Check the outputs:**
   ```bash
   terraform output
   terraform output -json
   ```

8. **Explore with Terraform console:**
   ```bash
   terraform console
   # Try these commands in the console:
   # var.terraform_concepts
   # length(var.terraform_concepts)
   # keys(var.provider_examples)
   # var.provider_examples["aws"]
   ```

9. **Clean up:**
   ```bash
   terraform destroy
   ```

## Expected Results

After running `terraform apply`, you should see:
- 6 concept files (one for each Terraform concept)
- 3 provider files (AWS, local, random)
- Outputs showing file paths and counts
- Total of 9 files created

## Experiment and Learn

Try these modifications to deepen your understanding:

### Add More Concepts
Edit `terraform.tfvars` (create if needed):
```hcl
terraform_concepts = [
  "providers",
  "resources", 
  "variables",
  "outputs",
  "modules",
  "state",
  "data-sources",
  "locals"
]
```

### Add a New Provider
Add to the `provider_examples` variable:
```hcl
azurerm = {
  description = "Microsoft Azure provider"
  documentation_url = "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs"
  use_cases = ["Virtual Machines", "Storage Accounts", "Resource Groups"]
}
```

### Explore Functions
In `terraform console`, try:
```
upper("hello")
length([1,2,3])
keys(var.provider_examples)
values(var.provider_examples)
timestamp()
```

## Common Issues and Solutions

### "No configuration files"
- Ensure you're in the correct directory with .tf files

### "Invalid template"
- Check template syntax in .tpl files
- Ensure proper `%{ }` syntax for conditionals

### "Invalid for_each argument"
- Verify that for_each receives a map or set
- Check variable types in variables.tf

## Key Takeaways

1. **Count vs For_Each**: Count creates a list, for_each creates a map
2. **Template Files**: Powerful for generating dynamic content
3. **Variable Types**: Terraform supports complex data structures
4. **Built-in Functions**: Many functions available for data manipulation
5. **Outputs**: Essential for sharing data between configurations

## Next Steps

1. Create your own template files
2. Experiment with different variable types
3. Try using data sources in the next exercise
4. Explore more built-in functions
5. Practice with different providers