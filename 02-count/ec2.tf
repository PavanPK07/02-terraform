resource "aws_instance" "web" {
    count = 10
    ami = var.ami_id
    instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] ==  "mysql" || var.instance_name[count.index] == "shipping" ? "t3.small" : "t2.micro"
    #vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name = var.instance_name[count.index]
  }
}

resource "aws_route53_record" "www" {
    count = 10
    zone_id = var.zone_id
    name    = "${var.instance_name[count.index]}.${var.domain_name}"
    type    = "A"
    ttl     = 300
    records = [var.instance_name[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}