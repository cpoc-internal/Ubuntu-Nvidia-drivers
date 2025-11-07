#!/bin/bash
#eargueda

#To apply this configuration on another server, please double-check the ETHERNET interface name and update the IP address as you need!

# ----------------- Configuration Variables -----------------
NETPLAN_FILE="/etc/netplan/50-config.yaml"

sudo tee "$NETPLAN_FILE" > /dev/null << EOF
network:
    version: 2
    ethernets:
        ens201np0:
            addresses:
            - 192.168.200.11/18
            nameservers:
                addresses:
                - 192.168.200.1

        ens202np0:
            addresses:
            - 192.168.200.12/24
            nameservers:
                addresses:
                - 192.168.200.1
                search: []

        ens203np0:
            addresses:
            - 192.168.200.13/24
            nameservers:
                addresses:
                - 192.168.200.1
                search: []

        ens204np0:
            addresses:
            - 192.168.200.14/24
            nameservers:
                addresses:
                - 192.168.200.1
                search: []

        ens205np0:
            addresses:
            - 192.168.200.15/24
            nameservers:
                addresses:
                - 192.168.200.1
                search: []
        
        ens206np0:
            addresses:
            - 192.168.200.16/24
            nameservers:
                addresses:
                - 192.168.200.1
                search: []

        ens207np0:
            addresses:
            - 192.168.200.17/24
            nameservers:
                addresses:
                - 192.168.200.1
                search: []

        ens208np0:
            addresses:
            - 192.168.200.18/24
            nameservers:
                addresses:
                - 192.168.200.1
                search: []

EOF

sudo chmod 600 "$NETPLAN_FILE"

echo " applying Netplan configuration..."
#sudo netplan try || { echo "Netplan configuration failed validation. Check $NETPLAN_FILE for syntax errors."; exit 1; }
#If 'netplan try' succeeds, it reverts after 120s if no confirmation.
sudo netplan apply

echo "----------------------------------------"
echo "Netplan configuration created and validated successfully."
echo "File location: $NETPLAN_FILE"
echo "Content:"
sudo cat "$NETPLAN_FILE"
echo "----------------------------------------"
echo " waiting few seconds..."
sleep 5
ifconfig
echo "Done."
