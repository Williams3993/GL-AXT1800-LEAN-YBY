#!/bin/sh
# Description: (After Update feeds)

# Modify default IP
sed -i 's/192.168.1.1/192.168.69.1/g' package/base-files/files/bin/config_generate

# Set DHCP IP Address start and end
#sed -i "s/option start.*/option start \'2\'/g" package/network/services/dnsmasq/files/dhcp.conf
#sed -i "s/option limit.*/option limit \'55\'/g" package/network/services/dnsmasq/files/dhcp.conf
# sed -i 's/OpenWrt/iStore OS/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/LEAN-GL-AXT1800/g' package/base-files/files/bin/config_generate

