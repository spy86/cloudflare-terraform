module "dns-zone" {
  source  = "spy86/dns-zone/cloudflare"
  version = "1.0.3"
  cloudflare_api_key = "XXXXXXXXXXXXXXXXXXXXXXXXXX"
  cloudflare_email = "some.email@example.com"
  zone_name = "domain.com"
  dns_entry = {
    domain_1 = {
      name  = "terraform"
      value = "192.168.0.11"
      type  = "A"
      ttl   = "3600"
      proxied = "true"
    }
}
}