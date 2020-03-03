resource "vcd_catalog" "new_catalog" {
    count   = var.create ? length(var.catalog) : 0

    name             = var.catalog[count.index]["name"]
    description      = lookup(var.catalog[count.index], "description", null)
    delete_recursive = var.catalog[count.index]["delete_recursive"]
    delete_force     = var.catalog[count.index]["delete_force"]
}
resource "vcd_catalog_media" "new_catalog" {
    depends_on  = [ "vcd_catalog.new_catalog" ]

    count   = var.create ? length(var.catalog_media) : 0

    catalog                 = var.catalog_media[count.index]["catalog"]
    name                    = var.catalog_media[count.index]["catalog_media_name"]
    description             = lookup(var.catalog_media[count.index], "description", null)
    media_path              = var.catalog_media[count.index]["media_path"]
    upload_piece_size       = lookup(var.catalog_media[count.index], "upload_piece_size", null)
    show_upload_progress    = lookup(var.catalog_media[count.index], "show_upload_progress", null)

    metadata    = var.default_metadata

}
