#VM Variables
variable "vm_name" {
    description =   "This variable holds GCP VM name"
    type        =   string
    default  =   "test" 
}

variable "vm_machine_type" {
    description =   "This variable holds GCP VM machine type"
    type        =   string
    default  =   "e2-medium" 
}

variable "vm_image_name" {
    description =   "This variable holds GCP VM image"
    type        =   string
    default  =   "debian-cloud/debian-10-buster-v20211105" 
}

#Disk Variable
variable "vm_disk_name" {
    description =   "This variable holds GCP VM disk name"
    type        =   string
    default  =   "e2-medium" 
}

variable "vm_disk_type" {
    description =   "This variable holds GCP VM disk type"
    type        =   string
    default  =   "pd-balanced" 
}

variable "vm_disk_zone" {
    description =   "This variable holds GCP VM disk zone"
    type        =   string
    default  =   "asia-south1-c" 
}

variable "vm_disk_size" {
    description =   "This variable holds GCP VM disk size"
    type        =   string
    default  =   100 
}

#Service Account Variable
variable "service_account_email" {
    description =   "This variable holds GCP service account email"
    type        =   string
    default  =   "" 
}

variable "service_account_scopes" {
    description =   "This variable holds GCP service account scope"
    type        =   list(string)
    default  =   [""] 
}