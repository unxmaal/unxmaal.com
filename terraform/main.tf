provider "aws" {
  region = "us-east-1"
}

resource "aws_route53_zone" "unxmaal" {
  name = "unxmaal.com"  
}

resource "aws_route53_record" "root_domain" {
  zone_id = aws_route53_zone.unxmaal.zone_id
  name    = "unxmaal.com"
  type    = "A"
  ttl     = 300
  records = [
    "185.199.108.153",
    "185.199.109.153",
    "185.199.110.153",
    "185.199.111.153",
  ]
}

resource "aws_route53_record" "www_subdomain" {
  zone_id = aws_route53_zone.unxmaal.zone_id
  name    = "www.unxmaal.com"
  type    = "CNAME"
  ttl     = 300
  records = ["unxmaal.com"]
}
