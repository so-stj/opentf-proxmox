resource "proxmox_lxc" "ubuntu_container" {
  hostname       = "ubuntu-22-04-lxc"
  target_node    = "kori"
  ostemplate     = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
  password       = var.lxc_root_password
  unprivileged   = true
  cores          = 2
  memory         = 1024
  swap           = 512
  ssh_public_keys = var.public_key

  rootfs {
    storage = "local"
    size    = "8G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "< IP address >"
    gw     = "< IP address >"
  }

  features {
    nesting = true
  }
}

resource "null_resource" "remote_exec" {
  depends_on = [proxmox_lxc.ubuntu_container]

  provisioner "remote-exec" {
    inline = [
      "echo 'Hello from LXC container'",
      "apt-get update -y",
      "apt-get install -y nginx"
    ]

    connection {
      type        = "ssh"
      user        = "root"
      private_key = var.secret_key
      host        = proxmox_lxc.ubuntu_container.network[0].ip
    }
  }
}
