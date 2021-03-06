variable public_key_path {
  description = "Path to the public key used to connect to instance"
}

variable zone {
  description = "Zone"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-base-1531118158"
}

variable instance_name {
  description = "Instance name"
  default     = "reddit-app"
}
