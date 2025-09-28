# Hello World Example

This is a simple "Hello World" Terraform configuration that demonstrates basic Terraform concepts without requiring cloud resources.

## Learning Objectives

After completing this example, you will understand:
- Basic Terraform configuration structure
- Provider requirements and versioning
- Resource creation with the `local` provider
- Variable usage and default values
- Output definitions
- Template file usage with `templatefile()` function
- The core Terraform workflow

## Prerequisites

- Terraform installed (version 1.0 or later)
- No cloud accounts required (uses local provider only)

## Files Included

- `main.tf` - Main configuration with resources
- `variables.tf` - Input variable definitions
- `outputs.tf` - Output value definitions
- `greeting.tpl` - Template file for personalized greeting
- `terraform.tfvars.example` - Example variable values
- `README.md` - This instruction file

## Instructions

1. **Navigate to this directory:**
   ```bash
   cd examples/hello-world
   ```

2. **Copy the example variables file (optional):**
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

3. **Edit terraform.tfvars (optional):**
   ```bash
   # Customize with your name
   student_name = "Your Name"
   course_name  = "Terraform Associate Certification"
   ```

4. **Initialize Terraform:**
   ```bash
   terraform init
   ```

5. **Review the execution plan:**
   ```bash
   terraform plan
   ```

6. **Apply the configuration:**
   ```bash
   terraform apply
   ```

7. **Check the created files:**
   ```bash
   ls -la *.txt
   cat hello-terraform.txt
   cat personalized-greeting.txt
   ```

8. **View the outputs:**
   ```bash
   terraform output
   ```

9. **Clean up when done:**
   ```bash
   terraform destroy
   ```

## Key Concepts Demonstrated

### 1. Provider Configuration
```hcl
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}
```

### 2. Resource Creation
```hcl
resource "local_file" "hello_world" {
  content  = "Hello, Terraform World!"
  filename = "${path.module}/hello-terraform.txt"
}
```

### 3. Variable Usage
```hcl
variable "student_name" {
  description = "Name of the student"
  type        = string
  default     = "Terraform Student"
}
```

### 4. Template Files
```hcl
content = templatefile("${path.module}/greeting.tpl", {
  name = var.student_name
})
```

### 5. Outputs
```hcl
output "hello_world_file" {
  description = "Path to the hello world file"
  value       = local_file.hello_world.filename
}
```

## Expected Results

After running `terraform apply`, you should see:
- Two text files created in the current directory
- Output values showing file paths and content
- No cloud resources or costs incurred

## Next Steps

1. Experiment with different variable values
2. Modify the template file content
3. Add additional resources or outputs
4. Try the `terraform console` command to explore functions
5. Move on to more complex examples in the repository

## Troubleshooting

### Common Issues

1. **"terraform command not found"**
   - Install Terraform from [terraform.io](https://www.terraform.io/downloads)

2. **"No configuration files"**
   - Ensure you're in the correct directory with .tf files

3. **Permission errors**
   - Check file system permissions for the current directory

### Useful Commands

- `terraform version` - Check Terraform version
- `terraform validate` - Validate configuration syntax
- `terraform fmt` - Format configuration files
- `terraform show` - Show current state
- `terraform console` - Interactive console for testing expressions