# Terraform Examples

This directory contains example Terraform configurations demonstrating various concepts and patterns.

## Example Categories

### Basic Examples
- [ ] `hello-world/` - Simple "Hello World" resource creation
- [ ] `basic-vpc/` - Basic VPC with subnets
- [ ] `simple-ec2/` - Single EC2 instance deployment

### Intermediate Examples  
- [ ] `multi-tier-app/` - Multi-tier application architecture
- [ ] `auto-scaling-group/` - Auto Scaling Group with Load Balancer
- [ ] `rds-with-vpc/` - RDS database in custom VPC

### Advanced Examples
- [ ] `microservices-platform/` - Complete microservices infrastructure
- [ ] `disaster-recovery/` - Multi-region disaster recovery setup
- [ ] `terraform-cloud-integration/` - Terraform Cloud workspace configuration

### Provider-Specific Examples

#### AWS Examples
- [ ] `aws-lambda-api/` - Lambda function with API Gateway
- [ ] `aws-eks-cluster/` - EKS cluster setup
- [ ] `aws-serverless-app/` - Serverless application stack

#### Azure Examples
- [ ] `azure-vm-scale-set/` - Virtual Machine Scale Set
- [ ] `azure-aks-cluster/` - AKS cluster deployment
- [ ] `azure-function-app/` - Azure Function App

#### GCP Examples
- [ ] `gcp-gke-cluster/` - GKE cluster setup
- [ ] `gcp-cloud-function/` - Cloud Function deployment
- [ ] `gcp-compute-instance/` - Compute Engine instance

### Special Topics
- [ ] `remote-state-backend/` - Remote state configuration
- [ ] `module-composition/` - Complex module composition
- [ ] `terraform-workspaces/` - Using Terraform workspaces
- [ ] `data-sources/` - Working with data sources
- [ ] `dynamic-blocks/` - Dynamic block usage
- [ ] `for-each-examples/` - for_each loop examples

## Using Examples

1. Navigate to the example directory
2. Review the README.md for specific requirements
3. Copy any `.tfvars.example` files to `.tfvars` and configure
4. Run the Terraform workflow:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```
5. Explore the created resources
6. Clean up when done:
   ```bash
   terraform destroy
   ```

## Example Structure

Each example typically includes:
- `main.tf` - Primary configuration
- `variables.tf` - Variable definitions  
- `outputs.tf` - Output definitions
- `terraform.tfvars.example` - Example variable values
- `README.md` - Specific instructions and learning objectives

## Learning Path

1. Start with **Basic Examples** to understand fundamentals
2. Progress to **Intermediate Examples** for real-world patterns
3. Explore **Advanced Examples** for complex architectures
4. Study **Provider-Specific Examples** for your cloud platform
5. Dive into **Special Topics** for advanced Terraform features

## Notes

- Examples are designed for learning, not production use
- Always clean up resources to avoid unnecessary costs
- Modify examples to experiment and learn
- Take notes on concepts learned from each example