
resource "azurerm_dev_test_global_vm_shutdown_schedule" "vmshutdown" {
  count     = var.MD_RUN
  virtual_machine_id    = var.MD_VM_ID
  location              = var.MD_LOCATION
  daily_recurrence_time = "0100"
  timezone              = "W. Europe Standard Time"
  notification_settings {
    enabled = false
  }
  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

variable "MD_VM_ID" {}
variable "MD_LOCATION" {}
variable "MD_RUN" {
  description = "ID of Vm Application"
  type        = number
  default     = "0"
}


