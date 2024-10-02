variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_name" {
    type = list 
    default = ["web", "mongodb", "mysql", "redis", "shipping", "payment", "cart", "user", "rabbitmq", "dispatch"]
}

variable "zone_id" {
    type = string
    default = "Z02236021ZAC3FFFXLOZ4"
}

variable "domain_name" {
    type = string
    default = "pkkr.online"
}