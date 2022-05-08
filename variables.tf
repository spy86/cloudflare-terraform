###########################
# Common vars
###########################
variable "cloudflare_email" {
  description = "The email associated with the account. This can also be specified with the CLOUDFLARE_EMAIL shell environment variable."
  type = string
}
variable "cloudflare_api_key" {
  description = "The Cloudflare API key. This can also be specified with the CLOUDFLARE_API_KEY shell environment variable."
  type = string
}
############################
#DNS ZONE variable
############################
variable "zone_name" {
  description = "The name of the zone."
  type = string
}
variable "dns_entry" {
  description = "The address prefix and name to use for the subnet."
  type = map(any)
  default = {
    domain_1 = {
      name  = "terraform"
      value = ["192.168.0.11"]
      type  = "A"
      ttl   = "3600"
      proxied = "true"
    }
  }
}