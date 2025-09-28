# Terraform Associate Exam Objectives

This document provides a detailed breakdown of the HashiCorp Terraform Associate (003) certification exam objectives.

## Exam Overview

- **Exam Code**: Terraform Associate (003)
- **Duration**: 1 hour
- **Questions**: 57 multiple choice and multiple select questions
- **Passing Score**: Not disclosed
- **Valid for**: 2 years
- **Cost**: $70.50 USD + taxes

## Detailed Exam Objectives

### 1. Understand Infrastructure as Code (IaC) concepts (20%)

#### Key Topics:
- [ ] Explain what IaC is
- [ ] Describe advantages of IaC patterns
- [ ] Compare different IaC tools (Terraform vs CloudFormation, Ansible, etc.)

#### Study Notes:
- **Infrastructure as Code (IaC)**: Managing and provisioning infrastructure through code rather than manual processes
- **Benefits**: Version control, repeatability, consistency, automation, cost reduction
- **Declarative vs Imperative**: Terraform is declarative (describe desired state)

### 2. Understand the purpose of Terraform (vs other IaC) (15%)

#### Key Topics:
- [ ] Explain multi-cloud and provider-agnostic benefits
- [ ] Explain the benefits of state
- [ ] Explain Terraform's role in orchestration vs configuration management

#### Study Notes:
- **Multi-cloud**: Single tool for multiple cloud providers
- **Provider ecosystem**: 2000+ providers available
- **State management**: Terraform tracks infrastructure state
- **Orchestration**: Focuses on infrastructure provisioning, not configuration

### 3. Understand Terraform basics (25%)

#### Key Topics:
- [ ] Handle Terraform and provider installation and versioning
- [ ] Describe plugin based architecture
- [ ] Demonstrate using multiple providers
- [ ] Describe how Terraform finds and fetches providers
- [ ] Explain when to use and not use provisioners

#### Study Notes:
- **Providers**: Plugins that interface with APIs
- **Provider installation**: Automatic during `terraform init`
- **Version constraints**: Use `~>` for compatible versions
- **Provisioners**: Last resort, prefer native provider resources

### 4. Use Terraform outside of core workflow (8%)

#### Key Topics:
- [ ] Describe when to use `terraform import`
- [ ] Explain the terraform_remote_state data source
- [ ] Explain when to use the `terraform console` command
- [ ] Explain when to use Terraform workspaces

#### Study Notes:
- **terraform import**: Bring existing resources under Terraform management
- **remote_state**: Access outputs from other Terraform configurations
- **terraform console**: Interactive console for testing expressions
- **workspaces**: Manage multiple environments (dev/staging/prod)

### 5. Interact with Terraform modules (12%)

#### Key Topics:
- [ ] Contrast module source options
- [ ] Interact with module inputs and outputs
- [ ] Describe variable scope within modules/child modules
- [ ] Discover modules from the public Terraform Registry
- [ ] Defining module version requirements

#### Study Notes:
- **Module sources**: Local paths, Terraform Registry, Git, HTTP
- **Input variables**: Customize module behavior
- **Output values**: Expose module data
- **Variable scope**: Variables are scoped to their module
- **Module versioning**: Use version constraints for stability

### 6. Navigate Terraform workflow (20%)

#### Key Topics:
- [ ] Describe Terraform workflow (Write → Plan → Apply)
- [ ] Initialize a Terraform working directory (`terraform init`)
- [ ] Validate a Terraform configuration (`terraform validate`)
- [ ] Generate and review an execution plan for Terraform (`terraform plan`)
- [ ] Execute changes to infrastructure with Terraform (`terraform apply`)
- [ ] Destroy Terraform managed infrastructure (`terraform destroy`)

#### Study Notes:
- **Core workflow**: init → plan → apply → destroy
- **terraform init**: Downloads providers and modules
- **terraform plan**: Shows what will be changed
- **terraform apply**: Makes the changes
- **terraform destroy**: Removes all managed resources

### 7. Implement and maintain state (15%)

#### Key Topics:
- [ ] Describe default local backend
- [ ] Outline state locking
- [ ] Handle backend authentication methods
- [ ] Describe remote state storage mechanisms and supported standard backends
- [ ] Describe effect of Terraform refresh on state
- [ ] Describe backend block in configuration and best practices
- [ ] Understand secret management in state files

#### Study Notes:
- **Local backend**: Default, stores state in `terraform.tfstate`
- **Remote backends**: S3, Azure Storage, GCS, Terraform Cloud
- **State locking**: Prevents concurrent modifications
- **State refresh**: Updates state with real infrastructure
- **Secrets in state**: State files may contain sensitive data

### 8. Read, generate, and modify configuration (20%)

#### Key Topics:
- [ ] Demonstrate use of variables and outputs
- [ ] Describe secure secret injection best practice
- [ ] Understand the use of collection and structural types
- [ ] Create and differentiate resource and data sources
- [ ] Use resource addressing and resource parameters to connect resources together
- [ ] Use Terraform built-in functions to write configuration
- [ ] Configure resource using a dynamic block
- [ ] Describe built-in dependency management (order of execution based)

#### Study Notes:
- **Variables**: Input parameters with types and validation
- **Outputs**: Export values from configuration
- **Data types**: string, number, bool, list, map, set, object, tuple
- **Data sources**: Read existing infrastructure
- **Resource addressing**: Reference resources by type.name
- **Built-in functions**: 100+ functions for data manipulation
- **Dynamic blocks**: Generate repeated nested blocks
- **Dependencies**: Implicit (references) and explicit (depends_on)

### 9. Understand Terraform Cloud and Enterprise capabilities (15%)

#### Key Topics:
- [ ] Describe the benefits of Sentinel, registry, and workspaces
- [ ] Differentiate OSS and Terraform Cloud workspaces
- [ ] Summarize features of Terraform Cloud

#### Study Notes:
- **Terraform Cloud**: SaaS offering with remote state, runs, and collaboration
- **Sentinel**: Policy as code framework (Enterprise feature)
- **Private Registry**: Share modules within organization
- **Workspaces**: Different concept than OSS workspaces
- **VCS integration**: Connect to GitHub, GitLab, etc.
- **Cost estimation**: Estimate cloud costs before applying

## Study Strategy

### Week-by-Week Breakdown

**Week 1: Foundations**
- Objectives 1, 2, 3 (IaC concepts, Terraform purpose, basics)
- Set up lab environment
- Complete basic exercises

**Week 2: Core Workflow**
- Objectives 6, 7 (workflow, state management)
- Practice with different backends
- Learn state operations

**Week 3: Advanced Features**
- Objectives 4, 5, 8 (advanced features, modules, configuration)
- Work with modules and functions
- Practice complex configurations

**Week 4: Cloud & Review**
- Objective 9 (Terraform Cloud)
- Review all objectives
- Take practice exams

## Practice Questions

### Sample Question Types

1. **Multiple Choice**: Which command initializes a Terraform working directory?
   - a) terraform init
   - b) terraform plan
   - c) terraform apply
   - d) terraform validate

2. **Multiple Select**: Which are valid Terraform variable types? (Select all that apply)
   - a) string
   - b) number
   - c) boolean
   - d) list
   - e) map

## Resources

- [Official Study Guide](https://www.hashicorp.com/certification/terraform-associate)
- [Terraform Documentation](https://www.terraform.io/docs/)
- [HashiCorp Learn](https://learn.hashicorp.com/terraform)
- [Practice Exams](https://learn.hashicorp.com/tutorials/terraform/associate-practice)

## Exam Tips

1. **Read questions carefully** - Pay attention to keywords
2. **Eliminate wrong answers** - Use process of elimination
3. **Manage time** - Don't spend too long on any question
4. **Review flagged questions** - Use the flag feature for difficult questions
5. **Practice hands-on** - The exam tests practical knowledge

## Quick Reference Commands

```bash
# Core workflow
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy

# State operations
terraform show
terraform state list
terraform state show <resource>
terraform refresh

# Other useful commands
terraform console
terraform import
terraform workspace list
terraform fmt
terraform providers
```