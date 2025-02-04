# opentf-proxmox
<div id="top"></div>
<p style="display: inline">
  <!-- List of technologies used --> 
  List of technologies used
  
<img src="https://img.shields.io/badge/Proxmox--FFA500.svg?logo=Proxmox&style=plastic"> <img src="https://img.shields.io/badge/HCL--007FFF.svg?logo=HCL&style=plastic"> <img src="https://img.shields.io/badge/opentofu--FFFF00.svg?logo=opentofu&style=plastic"> <img src="https://img.shields.io/badge/Linux--FFA500.svg?logo=Linux&style=plastic">

## Table of Contents

1. [About project](#Aboutproject)
2. [Enviorment](#Enviorment)
3. [Directory structure](#Directorystructure)
4. [Development environment setup](https://github.com/SO114514/opentf-proxmox/blob/main/README.md#devopment-enviorment-setup)
5. [List of all the HCL blocks](https://github.com/SO114514/opentf-proxmox/blob/main/README.md#list-of-all-the-hcl-blocks)
6. [Troubleshooting](#Troubleshooting)

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

### Devlopment enviorment setup
The installation of Opentofu varies depending on the development enviorment.

Below is an explanation of the installation procedure for .deb-based Linux.

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

If you want to install the opentofu by step and step please visit the website from below URL.

  <p align="left">
    <br />
    <!-- URL to the offcial Opentofu website -->
    <a href="https://opentofu.org/docs/intro/install/deb/"><strong>the offcial Opentofu website »</strong></a>
    <br />
    <br />

<p align="right">(<a href="#top">Huvudsida</a>)</p>

### List of all the HCL blocks
HashiCorp Configuration Language even HCL is a domain-specific language for declarative infrastructure management.
