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
  pm_api_url = "IP address or domain"
}

resource "proxmox_lxc" "ubuntu_container" {
  target_node = "proxmox"
  hostname = "ubuntu-22-04-lxc"
  ostemplate = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
  password = "add-here-root-password"
  unprivileged = true

  features {
    nesting = true
  }

  # specification settings
  cores = 1
  memory = 512
  swap = true
  ssh_public_keys = <<-EOT
    ssh-ed25519 <public keys>
  EOT
  
  rootfs {
    storage = "local-lvm"
    size    = "8G"
  }
  provisioner "remote-exec" {
    inline = [ 
      "apt-get update && upgrade -y"
     ]
  }
}