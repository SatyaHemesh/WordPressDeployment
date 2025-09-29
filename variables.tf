variable "mysql_root_password" {
  type = string
}

variable "mysql_database" {
  type    = string
  default = "wordpress"
}

variable "mysql_user" {
  type    = string
  default = "wpuser"
}

variable "mysql_password" {
  type = string
}
