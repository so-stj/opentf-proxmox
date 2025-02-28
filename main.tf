terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "3.0.1-rc6"
    }
  }
}

provider "proxmox" {
  # Configuration options
  pm_api_url = "https://xxx.xxx.xxx.xxx:8006/api2/json"
  pm_api_token_secret = "string"
  pm_api_token_id = "string"
  pm_log_enable = true
  pm_log_file   = "terraform-plugin-proxmox.log"
  pm_debug      = true
}

resource "proxmox_lxc" "ubuntu_container" {
  target_node  = "string"
  hostname     = "ubuntu-22-04-lxc"
  ostemplate   = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
  password     = "string"
  unprivileged = true

  features {
    nesting = true
  }

  // Basic configuration
  cores  = 2
  memory = 2048
  swap   = 512
  onboot = true
  ssh_public_keys = <<-EOT
    ssh-ed25519 "Public key"
  EOT

  // Storage
  rootfs {
    storage = "local"
    size    = "8G"
  }

  // Network
  network {
    name     = "eth0"
    bridge   = "vmbr0"
    ip       = "String"
    gw       = "String"
  }

  provisioner "remote-exec" {
    inline = [
    ]
    connection {
      type     = "ssh"
      user     = "root"
      private_key = file("~/＜pass the secret key＞")
      host     = split("/", self.network[0].ip)[0]
    }
}
