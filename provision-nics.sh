#!/bin/bash
#Nvidia-drivers
#eargueda@cisco.com

echo "provisioning nics ip addresses"
sudo apt install net-tools -y

sudo ip addr add 192.168.200.2/24 dev ens201f0np0
ip link set dev ens201f0np0 up

sudo ip addr add 192.168.200.2/24 dev ens202f0np0
ip link set dev ens202f0np0 up

sudo ip addr add 192.168.200.2/24 dev ens203f0np0
ip link set dev ens203f0np0 up

sudo ip addr add 192.168.200.2/24 dev ens204f0np0
ip link set dev ens204f0np0 up

sudo ip addr add 192.168.200.2/24 dev ens205f0np0
ip link set dev ens205f0np0 up

sudo ip addr add 192.168.200.2/24 dev ens206f0np0
ip link set dev ens206f0np0 up

sudo ip addr add 192.168.200.2/24 dev ens207f0np0
ip link set dev ens207f0np0 up

sudo ip addr add 192.168.200.2/24 dev ens208f0np0
ip link set dev ens208f0np0 up

ifconfig 
