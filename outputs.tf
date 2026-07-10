output "Vms_name" {
  value = [
    for vm in azurerm_virtual_machine.main : upper(vm.name)
  ]
}

output "tags" {
  value = [
    for vm in azurerm_virtual_machine.main : vm.tags
  ]
}

output "Vms_id" {
  value = [
    for vm in azurerm_virtual_machine.main : vm.id
  ]
}