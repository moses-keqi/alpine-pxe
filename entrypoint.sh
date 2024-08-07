#!/bin/sh
echo "Running dnsmasq --no-daemon $CMDLINE"
rm -rf /var/lib/tftpboot/debian-installer/arm64/grub/grub.cfg
envsubst < /var/lib/tftpboot/grub.cfg.tpl > /var/lib/tftpboot/debian-installer/arm64/grub/grub.cfg
envsubst < /etc/dnsmasq.conf.tpl > /etc/dnsmasq.conf
dnsmasq --no-daemon $CMDLINE