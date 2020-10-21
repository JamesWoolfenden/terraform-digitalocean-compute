
data "template_file" "user_data" {
  template = file("${path.module}/user-data-ubuntu.tpl")

  vars = {
    hostname-prefix = var.instance_type
    docker_cmd      = var.docker_cmd
  }
}
