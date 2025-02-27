# opentf-proxmox
<div id="top"></div>
<p style="display: inline">
  <!-- List of technologies used --> 
  List of technologies used
  
<img src="https://img.shields.io/badge/Proxmox--FFA500.svg?logo=Proxmox&style=plastic"> <img src="https://img.shields.io/badge/HCL--007FFF.svg?logo=HCL&style=plastic"> <img src="https://img.shields.io/badge/opentofu--FFFF00.svg?logo=opentofu&style=plastic"> <img src="https://img.shields.io/badge/Linux--FFA500.svg?logo=Linux&style=plastic"> <img src="https://img.shields.io/badge/WSL--007FFF.svg?logo=WSL&style=plastic">

## Table of Contents

1. [About project](#Aboutproject)
2. [Setup](https://github.com/SO114514/opentf-proxmox/tree/main#setup](https://github.com/SO114514/opentf-proxmox/blob/main/README.md#setup))
3. [Usage](https://github.com/SO114514/opentf-proxmox/blob/main/README.md#devopment-enviorment-setup)
4. [Troubleshooting](#Troubleshooting)

## About project

This project aims to automate the construction of an experimental Linux environment on Proxmox using Opentofu. 

<!-- Describe the project overview -->

  <p align="left">
    <br />
    <!-- URL to the offcial Opentofu website -->
    <a href="https://opentofu.org/"><strong>the offcial Opentofu website »</strong></a>
    <br />
    <br />

<p align="right">(<a href="#top">Huvudsida</a>)</p>

### Setup
The installation of Opentofu varies depending on the development enviorment.

Below is an explanation of the installation procedure for .deb-based Linux.

 1. Using the installer

```ruby
# Download the installer script:
curl --proto '=https' --tlsv1.2 -fsSL https://get.opentofu.org/install-opentofu.sh -o install-opentofu.sh
# Or use wget alternatively:
wget --secure-protocol=TLSv1_2 --https-only https://get.opentofu.org/install-opentofu.sh -O install-opentofu.sh

# Give it execution permissions:
chmod +x install-opentofu.sh

# Run the installer:
./install-opentofu.sh --install-method deb

# Remove the installer:
rm -f install-opentofu.sh
```

 2. Step by step instructions
    The following steps how to set up the OpenTofu .deb reposistories.

```ruby
# Update and install the package
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg

# Check copy of the Opentofu GPGkey and verifies that your packages have indeed benn created using the official pipeline and not been tampered with:
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://get.opentofu.org/opentofu.gpg | sudo tee /etc/apt/keyrings/opentofu.gpg >/dev/null
curl -fsSL https://packages.opentofu.org/opentofu/tofu/gpgkey | sudo gpg --no-tty --batch --dearmor -o /etc/apt/keyrings/opentofu-repo.gpg >/dev/null
sudo chmod a+r /etc/apt/keyrings/opentofu.gpg /etc/apt/keyrings/opentofu-repo.gpg

# And you have to create the OpenTofu source list:
echo \
  "deb [signed-by=/etc/apt/keyrings/opentofu.gpg,/etc/apt/keyrings/opentofu-repo.gpg] https://packages.opentofu.org/opentofu/tofu/any/ any main
deb-src [signed-by=/etc/apt/keyrings/opentofu.gpg,/etc/apt/keyrings/opentofu-repo.gpg] https://packages.opentofu.org/opentofu/tofu/any/ any main" | \
sudo tee /etc/apt/sources.list.d/opentofu.list > /dev/null
sudo chmod a+r /etc/apt/sources.list.d/opentofu.list

# Installing Opentofu on your machine:
sudo apt-get update
sudo apt-get install -y tofuh
```

  <p align="left">
    <br />
    <!-- URL to the offcial Opentofu website -->
    <a href="https://opentofu.org/docs/intro/install/deb/"><strong>the offcial Opentofu website »</strong></a>
    <br />
    <br />

<p align="right">(<a href="#top">Huvudsida</a>)</p>

### Usage
HashiCorp Configuration Language even HCL is a domain-specific language for declarative infrastructure management.
