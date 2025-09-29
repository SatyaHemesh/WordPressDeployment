terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Create Docker network
resource "docker_network" "wp_network" {
  name = "wordpress_network"
}

# MySQL Container
resource "docker_container" "mysql" {
  name  = "mysql_db"
  image = "mysql:8.0"
  env = [
    "MYSQL_ROOT_PASSWORD=${var.mysql_root_password}",
    "MYSQL_DATABASE=${var.mysql_database}",
    "MYSQL_USER=${var.mysql_user}",
    "MYSQL_PASSWORD=${var.mysql_password}"
  ]
  ports {
    internal = 3306
    external = 3307
  }
  volumes {
  container_path = "/var/lib/mysql"
  host_path      = abspath("${path.module}/mysql_data")
}

  networks_advanced {
    name = docker_network.wp_network.name
  }
}

# WordPress Container
resource "docker_container" "wordpress" {
  name  = "wordpress_site"
  image = "wordpress:latest"
  env = [
    "WORDPRESS_DB_HOST=mysql_db:3306",
    "WORDPRESS_DB_USER=${var.mysql_user}",
    "WORDPRESS_DB_PASSWORD=${var.mysql_password}",
    "WORDPRESS_DB_NAME=${var.mysql_database}"
  ]
  ports {
    internal = 80
    external = 8080
  }
  depends_on = [docker_container.mysql]

  networks_advanced {
    name = docker_network.wp_network.name
  }
}
