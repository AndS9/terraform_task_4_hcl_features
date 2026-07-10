output "Vms_name" {
  value = upper(join(",", [
    for vm in azurerm_virtual_machine.main :vm.name
  ]))
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