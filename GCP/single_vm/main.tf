resource "google_compute_instance" "vm" {
    name            =   var.vm_name
    machine_type    =   var.vm_machine_type
    attached_disk   {
        source  =   google_compute_disk.external_disk.name
    }
    tags = ["testing"]

    boot_disk {
        initialize_param {
            image = var.vm_image_name
        }
    }

    shielded_instance_config {
        enable_integrity_monitoring =   true
        enable_secure_boot          =   true
        enable__vtpm                =   true
    }

    network_interface {
        network =   "default"
    }

    service_account {
        email   =   var.service_account_email
        scopes  =   var.service_account_scopes
    }

    resource "google_compute_disk" "external_disk" {
        name    =   var.vm_disk_name
        type    =   var.vm_disk_type
        zone    =   var.vm_disk_zone
        size    =   var.vm_disk_size
        labels  = {
            environment  =   "dev"
        }
        physical_block_size_bytes   =   4096
    }
}