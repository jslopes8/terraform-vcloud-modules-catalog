variable "create" {
  type      = bool
  default   = true
}
variable "catalog" {
  type      = list(map(string))
  default   = []
}
variable "catalog_media" {
  type      = list(map(string))
  default   = []
}
variable "default_metadata" {
    type    = map(string)
    default = {}
  
}

