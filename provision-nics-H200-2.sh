#!/bin/bash
#Nvidia-drivers
#eargueda@cisco.com

echo "provisioning nics ip addresses"
sudo apt install net-tools -y

sudo ip addr add 192.168.200.21/24 dev ens201f0np0
sudo ip link set dev ens201np0 up

sudo ip addr add 192.168.200.22/24 dev ens202f0np0
sudo ip link set dev ens202np0 up

sudo ip addr add 192.168.200.23/24 dev ens203f0np0
sudo ip link set dev ens203np0 up

sudo ip addr add 192.168.200.24/24 dev ens204f0np0
sudo ip link set dev ens204np0 up

sudo ip addr add 192.168.200.25/24 dev ens205f0np0
sudo ip link set dev ens205np0 up

sudo ip addr add 192.168.200.26/24 dev ens206f0np0
sudo ip link set dev ens206np0 up

sudo ip addr add 192.168.200.27/24 dev ens207f0np0
sudo ip link set dev ens207np0 up

sudo ip addr add 192.168.200.28/24 dev ens208f0np0
sudo ip link set dev ens208np0 up

ifconfig 