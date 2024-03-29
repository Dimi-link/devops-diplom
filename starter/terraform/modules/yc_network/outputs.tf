output network_id {
  value = data.yandex_vpc_network.network.id
  description = "Network ID"
}

output "subnets" {
  value       = yandex_vpc_subnet.subnet
  sensitive   = false
  description = "List of Subnets"
}

output "security_groups" {
  value       = yandex_vpc_security_group.security_group
  sensitive   = false
  description = "List of Security Groups"
}

