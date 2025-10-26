variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
    tags = map(string)
  }))
}
variable "virtual_networks" {
  type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
    tags                = map(string)
    subnets = optional(list(object({
      name          = string
      address_prefixes = list(string)
    })), [])
  }))
}