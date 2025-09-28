output "hello_world_file" {
  description = "Path to the hello world file"
  value       = local_file.hello_world.filename
}

output "personalized_greeting_file" {
  description = "Path to the personalized greeting file"
  value       = local_file.personalized_greeting.filename
}

output "file_contents" {
  description = "Contents of the hello world file"
  value       = local_file.hello_world.content
}