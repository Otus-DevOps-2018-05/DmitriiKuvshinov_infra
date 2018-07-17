variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
  default = "appuser:${file("~/.ssh/appuser.pub")}"
}

variable disk_image {
  description = "Disk image"
}

variable private_key {
 description = "File of private key"
 default = "${file("~/.ssh/appuser")}"
}
