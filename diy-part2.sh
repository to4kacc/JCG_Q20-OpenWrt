#!/bin/bash
#=================================================
# DaoDao's script
#=================================================             



##配置IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

##

##取消bootstrap为默认主题

##更改主机名
# sed -i "s/hostname='.*'/hostname='AE86Wrt'/g" package/base-files/files/bin/config_generate



##WiFi


#sed -i "s/MT7981_AX3000_2.4G/AE86-2.4G/g" package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b0.dat
#sed -i "s/MT7981_AX3000_5G/AE86-5G/g" package/mtk/drivers/wifi-profile/files/mt7981/mt7981.dbdc.b1.dat


## golang 为 1.24.x
# rm -rf feeds/packages/lang/golang
# git clone https://github.com/sbwml/packages_lang_golang -b 24.x feeds/packages/lang/golang
