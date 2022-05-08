# Add a record to the domain
resource "cloudflare_record" "main" {
  for_each = "${var.dns_entry}"
  zone_id = "${data.cloudflare_zone.main.id}"
  name    = each.value["name"]
  value   = each.value["value"]
  type    = each.value["type"]
  ttl     = each.value["ttl"]
  proxied = each.value["proxied"]

depends_on = [ "data.cloudflare_zone.main" ] 
}