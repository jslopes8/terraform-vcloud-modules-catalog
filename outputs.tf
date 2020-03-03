output "catalog_name" {
  value = vcd_catalog.new_catalog.*.name
}
output "template_name" {
  value = vcd_catalog_media.new_catalog.*.name
}
