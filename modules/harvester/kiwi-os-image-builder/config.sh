#!/bin/bash
set -ex

systemctl enable sshd
systemctl enable libvirtd
systemctl enable wicked
systemctl enable wicked-dhcp4
systemctl enable cloud-init
systemctl enable cloud-init-local
systemctl enable cloud-config
systemctl enable cloud-final
systemctl enable google-guest-agent
systemctl enable google-osconfig-agent
systemctl enable google-startup-scripts.service

cat <<EOF > /etc/sysconfig/network/ifcfg-eth0
BOOTPROTO='dhcp'
STARTMODE='auto'
EOF
