
resource "azurerm_storage_share" "FSShare" {
  name                 = var.MD_SHARE_NAME
  storage_account_name = var.MD_ST_NAME
  quota                = var.MD_SHAREQUOTA
  tags = var.MD_ALL_TAGS

}

output "share_name" {
  value = azurerm_storage_share.FSShare.name
}
