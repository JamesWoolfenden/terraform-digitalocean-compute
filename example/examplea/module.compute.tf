module "compute" {
  source     = "../../"
  docker_cmd = "docker run -d --restart=unless-stopped -p 8080:8080 rancher/server:${var.rancher_version_tag}"
}
