output "random_suffix" {
  description = "Random suffix generated for this run"
  value       = random_id.suffix.hex
}

output "concept_files" {
  description = "List of concept files created"
  value       = local_file.terraform_concepts[*].filename
}

output "provider_files" {
  description = "Map of provider files created"
  value       = { for k, v in local_file.provider_info : k => v.filename }
}

output "total_files_created" {
  description = "Total number of files created"
  value       = length(local_file.terraform_concepts) + length(local_file.provider_info)
}

output "terraform_concepts_covered" {
  description = "Terraform concepts covered in this exercise"
  value       = var.terraform_concepts
}