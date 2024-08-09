port=53
user=dnsmasq
group=dnsmasq
server=${HOST_IP}
server=114.114.114.114
server=8.8.8.8
interface=lo
listen-address=${HOST_IP},127.0.0.1
bind-interfaces
interface=${DNS_INTERFACE}
addn-hosts=/etc/dnsmasq_hosts
log-dhcp
dhcp-broadcast=192.168.0.255
dhcp-boot=debian-installer/arm64/bootnetaa64.efi,boothost,${HOST_IP}
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