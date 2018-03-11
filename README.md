# Provisioning Ubuntu VirtualMachine For Hyper-V
This is a setup to run a ubuntu virtual machine using vagrant.  
It works with hyper-v in Windows 10 Professional.  
This setup involves installing docker using chef.  

## Requirements
[Vagrant] (https://www.vagrantup.com/)  
[Hyper-V] (https://docs.microsoft.com/virtualization/hyper-v-on-windows/about/)

## VM Specification
* guest os : Ubuntu 16.04.4 LTS (Xenial Xerus)
* provider : hyper-v
* provisioning tool : chef

## Usage
Run as Administrator
```bash
vagrant up --provider hyperv
```

## Wiki
https://github.com/sangyeonK/provisioning_vm/wiki
