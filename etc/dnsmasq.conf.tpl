port=53
user=dnsmasq
group=dnsmasq
interface=lo
listen-address=127.0.0.1,${HOST_IP}
bind-interfaces
interface=${DNS_INTERFACE}
addn-hosts=/etc/dnsmasq_hosts
resolv-file=/etc/resolv.dnsmasq.conf
log-dhcp
dhcp-broadcast=${IP_DELIMITER}.255
dhcp-boot=debian-installer/arm64/bootnetaa64.efi,boothost,${HOST_IP}
#gateway
dhcp-option=option:router,192.168.1.1
#DNS
dhcp-option=option:dns-server,192.168.1.180,114.114.114.114,8.8.8.8
enable-tftp
tftp-root=/var/lib/tftpboot
conf-dir=/etc/dnsmasq.d,.rpmnew,.rpmsave,.rpmorig



#port=53
#user=dnsmasq
#group=dnsmasq
#server=114.114.114.114
#server=8.8.8.8
#interface=lo
#listen-address=${HOST_IP},127.0.0.1
#bind-interfaces
#interface=${DNS_INTERFACE}
#addn-hosts=/etc/dnsmasq_hosts
#log-dhcp
#dhcp-broadcast=192.168.0.255
#dhcp-boot=debian-installer/arm64/bootnetaa64.efi
#enable-tftp
#tftp-root=/var/lib/tftpboot
#conf-dir=/etc/dnsmasq.d,.rpmnew,.rpmsave,.rpmorig