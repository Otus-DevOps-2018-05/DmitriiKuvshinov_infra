variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable zone {
  description = "Region"
  default     = "europe-west1-b"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-base-1531118158"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-base-1531118158"
}

variable public_key_path {
  default = "~/.ssh/appuser.pub"
}
