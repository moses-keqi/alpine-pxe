set menu_color_normal=cyan/blue
set menu_color_highlight=white/blue

insmod gzio

menuentry 'Start Kylin arm64'{
    set backgroud_color=black
    set gfxpayload=keep
    echo 'Start Kylin arm64 Please wait ...'
    linux /debian-installer/arm64/kylin/vmlinuz console=tty boot=casper netboot=nfs nfsroot=${HOST_IP}:${NFS_BASE_PATH}/data components union=overlay locales=zh_CN.UTF-8 livecd-installer --
    initrd /debian-installer/arm64/kylin/initrd.lz
}
