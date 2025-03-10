variable "proxmox_user" {
  description = "Proxmox API username"
  type        = string
   sensitive   = true
}

variable "proxmox_password" {
  description = "Proxmox API password"
  type        = string
  sensitive   = true
}

variable "lxc_root_password" {
  description = "Root password for the LXC container"
  type        = string
  sensitive   = true
}

variable "public_key" {
    description = "Key for the public"
  type        = string
  sensitive   = true
}

variable "secret_key" {
    description = "Key for the secret"
  type        = string
  sensitive   = true
}
