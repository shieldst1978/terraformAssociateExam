# Terraform Associate Exam Coursework

This repository contains my coursework and practice materials for the HashiCorp Terraform Associate (003) certification exam.

## 🎯 Exam Objectives

The Terraform Associate exam covers the following objectives:

1. **Understand Infrastructure as Code (IaC) concepts**
2. **Understand the purpose of Terraform (vs other IaC)**
3. **Understand Terraform basics**
4. **Use Terraform outside of core workflow**
5. **Interact with Terraform modules**
6. **Use the core Terraform workflow**
7. **Implement and maintain state**
8. **Read, generate, and modify configuration**
9. **Understand Terraform Cloud capabilities**

## 📁 Repository Structure

```
├── modules/          # Reusable Terraform modules
├── exercises/        # Hands-on practice exercises organized by objective
├── examples/         # Example configurations and use cases
├── notes/           # Study notes and references
└── README.md        # This file
```

## 🚀 Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed (version 1.0+)
- AWS, Azure, or GCP account for cloud provider exercises
- Basic understanding of cloud computing concepts

### Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/shieldst1978/terraformAssociateExam.git
   cd terraformAssociateExam
   ```

2. Initialize Terraform in any exercise directory:
   ```bash
   cd exercises/[exercise-name]
   terraform init
   ```

3. Follow the instructions in each exercise's README file

## 📚 Study Resources

- [HashiCorp Terraform Associate Exam Guide](https://www.hashicorp.com/certification/terraform-associate)
- [Terraform Documentation](https://www.terraform.io/docs/)
- [Terraform Registry](https://registry.terraform.io/)
- [HashiCorp Learn Terraform](https://learn.hashicorp.com/terraform)

## ⚠️ Important Notes

- Never commit sensitive data like API keys, passwords, or `.tfvars` files
- Always run `terraform plan` before `terraform apply`
- Remember to clean up resources with `terraform destroy` to avoid charges
- Keep state files secure and backed up

## 🏆 Exam Tips

- Understand the Terraform workflow: Write → Plan → Apply
- Practice with different providers (AWS, Azure, GCP)
- Learn about state management and remote backends
- Understand module composition and the Terraform Registry
- Practice troubleshooting common issues

---

*Good luck with your Terraform Associate certification journey! 🎉*