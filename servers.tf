data "aws_ami" "centos" {
  owners = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}

data "aws_security_group" "allow-all" {
  name = "allow-all"
}

variable "instance_type" {
  default= "t3.micro"
}

resource "aws_instance" "frontend" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "var.instance_type"
  vpc_security_group_ids = [data.aws_security_group.allow-all.id]

  tags = {
    Name = "frontend"
  }
}
resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "var.instance_type"
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z104560831NEF0T6OKT9Q"
  name    = "frontend-dev.anjidevops72.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "var.instance_type"
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z104560831NEF0T6OKT9Q"
  name    = "mongodb-dev.anjidevops72.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "var.instance_type"
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z104560831NEF0T6OKT9Q"
  name    = "catalogue-dev.anjidevops72.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "var.instance_type"
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z104560831NEF0T6OKT9Q"
  name    = "redis-dev.anjidevops72.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "var.instance_type"
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z104560831NEF0T6OKT9Q"
  name    = "user-dev.anjidevops72.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "var.instance_type"
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z104560831NEF0T6OKT9Q"
  name    = "mysql-dev.anjidevops72.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "var.instance_type"
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z104560831NEF0T6OKT9Q"
  name    = "cart-dev.anjidevops72.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.cart.private_ip]
}
resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "var.instance_type"
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z104560831NEF0T6OKT9Q"
  name    = "shipping-dev.anjidevops72.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "var.instance_type"
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z104560831NEF0T6OKT9Q"
  name    = "rabbitmq-dev.anjidevops72.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "var.instance_type"
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = "Z104560831NEF0T6OKT9Q"
  name    = "payment-dev.anjidevops72.online"
  type    = "A"
  ttl     = 300
  records = [aws_instance.payment.private_ip]
}
