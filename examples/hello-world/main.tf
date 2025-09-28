# Simple "Hello World" Terraform configuration
# This example creates a local file to demonstrate basic Terraform functionality

terraform {
  required_version = ">= 1.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# Create a simple local file
resource "local_file" "hello_world" {
  content  = "Hello, Terraform World!\nGenerated at: ${timestamp()}\n"
  filename = "${path.module}/hello-terraform.txt"
}

# Create a more complex example with variables
resource "local_file" "personalized_greeting" {
  content = templatefile("${path.module}/greeting.tpl", {
    name        = var.student_name
    course      = var.course_name
    timestamp   = timestamp()
  })
  filename = "${path.module}/personalized-greeting.txt"
}