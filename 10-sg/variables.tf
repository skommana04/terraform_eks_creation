
variable "project" {
    type = string
    default = "roboshop"
}
variable "component" {
        type = string
    default = "catalogue"
}
variable "environment" {
    type = string
    default = "dev"
}
variable "sg_names" {
    default = [
        "mongodb", "redis", "mysql", "rabbitmq", "bastion"
    ]
}