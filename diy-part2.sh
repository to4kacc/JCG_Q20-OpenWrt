#!/bin/bash
#=================================================
# DaoDao's script
#=================================================             


##配置IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

##
rm -rf ./feeds/extraipk/theme/luci-theme-argon-18.06
rm -rf ./feeds/extraipk/theme/luci-app-argon-config-18.06
rm -rf ./feeds/extraipk/theme/luci-theme-design
rm -rf ./feeds/extraipk/theme/luci-theme-edge
rm -rf ./feeds/extraipk/theme/luci-theme-ifit
rm -rf ./feeds/extraipk/theme/luci-theme-opentopd
rm -rf ./feeds/extraipk/theme/luci-theme-neobird
rm -rf ./feeds/extraipk/patch/luci-app-turboacc

rm -rf ./package/feeds/extraipk/luci-theme-argon-18.06
rm -rf ./package/feeds/extraipk/luci-app-argon-config-18.06
rm -rf ./package/feeds/extraipk/theme/luci-theme-design
rm -rf ./package/feeds/extraipk/theme/luci-theme-edge
rm -rf ./package/feeds/extraipk/theme/luci-theme-ifit
rm -rf ./package/feeds/extraipk/theme/luci-theme-opentopd
rm -rf ./package/feeds/extraipk/theme/luci-theme-neobird
rm -rf ./package/feeds/extraipk/luci-app-turboacc


##取消bootstrap为默认主题
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-nginx/Makefile

##更改主机名
sed -i "s/hostname='.*'/hostname='AE86Wrt'/g" package/base-files/files/bin/config_generate



##WiFi
# sed -i "s/ImmortalWrt/AE86/g" package/kernel/mac80211/files/lib/wifi/mac80211.sh


##MosDNS
rm -rf feeds/packages/net/mosdns/*
cp -af feeds/extraipk/op-mosdns/mosdns/* feeds/packages/net/mosdns/
rm -rf feeds/packages/net/v2ray-geodata/*
cp -af feeds/extraipk/op-mosdns/v2ray-geodata/* feeds/packages/net/v2ray-geodata/


##更新FQ
rm -rf feeds/luci/applications/luci-app-passwall/*
cp -af feeds/extraipk/patch/wall-luci/luci-app-passwall/*  feeds/luci/applications/luci-app-passwall/

# rm -rf feeds/luci/applications/luci-app-ssr-plus/*
# cp -af feeds/extraipk/patch/wall-luci/luci-app-ssr-plus/*  feeds/luci/applications/luci-app-ssr-plus/
