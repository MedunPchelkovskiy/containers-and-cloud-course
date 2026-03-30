terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}
provider "docker" {
  host = "unix:///var/run/docker.sock"
}
resource "docker_image" "nginx" {
  name = "nginxdemos/hello"
}
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "nginx_hello"
  ports {
    internal = 80
    external = 5005
  }
}
