#!/bin/sh
# Description: (After Update feeds)

# Modify default IP
sed -i 's/192.168.1.1/192.168.69.1/g' package/base-files/files/bin/config_generate

# Set DHCP IP Address start and end
#sed -i "s/option start.*/option start \'2\'/g" package/network/services/dnsmasq/files/dhcp.conf
#sed -i "s/option limit.*/option limit \'55\'/g" package/network/services/dnsmasq/files/dhcp.conf
# sed -i 's/OpenWrt/iStore OS/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OpenWrt-AX3000T/g' package/base-files/files/bin/config_generate
# 设置无线配置文件
cat << EOF > ./package/base-files/files/etc/config/wireless
config wifi-device 'radio0'
    option type 'mac80211'
    option channel 'auto'
    option hwmode '11ax'
    option path 'platform/18000000.wifi'
    option htmode 'HE40'
    option country 'US'

config wifi-iface 'default_radio0'
    option device 'radio0'
    option network 'lan'
    option mode 'ap'
    option ssid 'OpenWrt-2.4G'  # 2.4GHz WiFi 名称
    option encryption 'psk2'
    option key 'wifipassword'  # WiFi 密码

config wifi-device 'radio1'
    option type 'mac80211'
    option channel 'auto'
    option hwmode '11ax'
    option path 'platform/18000000.wifi+1'
    option htmode 'HE80'
    option country 'US'

config wifi-iface 'default_radio1'
    option device 'radio1'
    option network 'lan'
    option mode 'ap'
    option ssid 'OpenWrt-5G'  # 5GHz WiFi 名称
    option encryption 'psk2'
    option key 'wifipassword'  # WiFi 密码
EOF
