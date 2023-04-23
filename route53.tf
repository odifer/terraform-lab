resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.aws-e-learning.zone_id
  name    = "cv.aws-e-learning.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.demo1.public_ip]
}