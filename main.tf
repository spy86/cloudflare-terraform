provider "cloudflare" {
  email   = "${var.cloudflare_email}"
  api_key = "${var.cloudflare_api_key}"
}

data "cloudflare_zone" "main" {
  name = "${var.zone_name}"
}