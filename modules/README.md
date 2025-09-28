# Terraform Modules

This directory contains reusable Terraform modules for common infrastructure patterns.

## Module Structure

Each module follows the standard Terraform module structure:

```
module-name/
├── main.tf          # Primary module logic
├── variables.tf     # Input variables
├── outputs.tf       # Output values
├── versions.tf      # Provider version constraints
└── README.md        # Module documentation
```

## Available Modules

### Basic Infrastructure Modules
- [ ] `vpc/` - Virtual Private Cloud setup
- [ ] `security-group/` - Security group configurations
- [ ] `ec2-instance/` - EC2 instance with common configurations

### Application Modules
- [ ] `web-server/` - Web server with load balancer
- [ ] `database/` - Database setup with security best practices

### Utility Modules
- [ ] `s3-bucket/` - S3 bucket with versioning and encryption
- [ ] `iam-role/` - IAM roles and policies

## Module Development Guidelines

1. **Follow naming conventions**: Use lowercase with hyphens
2. **Document everything**: Include comprehensive README files
3. **Version constraints**: Pin provider versions in `versions.tf`
4. **Variable validation**: Add validation rules where appropriate
5. **Output important values**: Make key attributes available as outputs

## Using Modules

### Local Modules
```hcl
module "example" {
  source = "../modules/module-name"
  
  # Required variables
  name = "my-resource"
  environment = "dev"
}
```

### Remote Modules
```hcl
module "example" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.0"
  
  # Module-specific variables
  name = "my-vpc"
  cidr = "10.0.0.0/16"
}
```

## Best Practices

- Keep modules focused and single-purpose
- Use meaningful variable names and descriptions
- Provide sensible defaults where possible
- Include examples in module documentation
- Test modules thoroughly before use
- Version your modules appropriately