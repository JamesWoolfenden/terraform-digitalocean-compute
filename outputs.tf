output "server-ip" {
  value = digitalocean_droplet.instance.*.ipv4_address[0]
}

output "instances" {
  value = digitalocean_droplet.instance
}
