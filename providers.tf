terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "3.0.1-rc6"
    }
  }
}

provider "proxmox" {
  pm_api_url      = "https://< IP address or domain >:8006/api2/json"
  pm_tls_insecure = true
  pm_user         = var.proxmox_user
  pm_password     = var.proxmox_password
}
