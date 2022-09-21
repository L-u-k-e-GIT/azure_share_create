
resource "azurerm_storage_share" "FSShare" {
  name                 = var.MD_SHARE_NAME
  storage_account_name = var.MD_ST_NAME
  quota                = var.MD_SHAREQUOTA
  metadata             = var.MD_FS_METADATA

}

output "share_name" {
  value = azurerm_storage_share.FSShare.name
}
