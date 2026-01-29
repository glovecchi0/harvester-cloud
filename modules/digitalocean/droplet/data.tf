data "digitalocean_image" "opensuse" {
  count = var.certified_os_image ? 0 : 1
  name  = var.os_image_name
}

data "digitalocean_image" "certified" {
  count = var.certified_os_image ? 1 : 0
  name  = "${var.prefix}-opensuse-cert-img"
}

