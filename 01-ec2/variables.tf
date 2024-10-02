variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "tags" {
    type = map
    default = {
        Name = "Roboshop"
        Environment = "DEV"
        Component = "web"
        Terraform = true
    }
}

variable "sg_name" {
    type = string
    default = "allow_all"
}