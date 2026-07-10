output "Vms_name1" {
  value = upper(azurerm_virtual_machine.main[0].name)
}

output "Vms_name2" {
  value = upper(azurerm_virtual_machine.main[1].name)
}

output "Vms_tags" {
  value = join(",", [
    for vm in azurerm_virtual_machine.main :
    jsonencode(vm.tags)
  ])
}

output "Vms_id" {
  value = [
    for vm in azurerm_virtual_machine.main : vm.id
  ]
}