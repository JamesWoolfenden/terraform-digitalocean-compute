resource "digitalocean_droplet" "instance" {
  count              = var.node_count
  image              = var.image
  name               = "myinstance-${var.instance_type}-${count.index}"
  region             = var.do_region
  size               = var.do_droplet_size
  backups            = false
  ipv6               = false
  private_networking = false
  user_data          = data.template_file.user_data.rendered
}
