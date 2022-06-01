output "id" {
  description = "Disambiguated ID of the Transfer Server"
  value       = join("", aws_transfer_server.default.*.id)
}

output "transfer_endpoint" {
  description = "The endpoint of the Transfer Server"
  value       = module.this.enabled ? join("", aws_transfer_server.default.*.endpoint) : null
}

output "elastic_ips" {
  description = "Provisioned Elastic IPs"
  value       = module.this.enabled && var.eip_enabled ? aws_eip.sftp.*.id : null
}
