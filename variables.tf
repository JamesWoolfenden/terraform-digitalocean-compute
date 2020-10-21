
variable "instance_type" {
  default = "node"
}

variable "docker_cmd" {}


variable "node_count" {
  default = 1
}

variable "do_region" {
  default = "lon1"
}

variable "do_droplet_size" {
  default = "2gb"
}

variable "image" {
  default= "ubuntu-16-04-x64"
}