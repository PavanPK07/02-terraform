variable "instance_names" {
    type = map
    default = {
        mongodb = "t3.small"
        mysql = "t3.small"
        shipping = "t3.small"
        catalogue = "t2.micro"
        cart = "t2.micro"
        user = "t2.micro"
        payment = "t2.micro"
        redis = "t2.micro"
        rabbitmq = "t2.micro"
        dispatch = "t2.micro"
        web = "t2.micro"
    }
}

variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "zone_id" {
    type = string
    default = "Z02236021ZAC3FFFXLOZ4"
}

variable "domain_name" {
    type = string
    default = "pkkr.online"
}