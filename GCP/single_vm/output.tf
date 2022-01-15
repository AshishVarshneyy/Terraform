output "instance_ip" {
    description = "The private IP address of the main server instance"
    value       =  google_compute_instance.vm.network_interface.0.network_ip
}

output "instance_id" {
    description = "The instance id of the main server instance"
    value       =  google_compute_instance.vm.instnace_id
}

output "disk_id" {
    description = "The disk id of the disk"
    value       =  google_compute_disk.external.disk_id
}