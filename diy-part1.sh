#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git tailscale https://github.com/asvow/luci-app-tailscale' >>feeds.conf.default
# echo 'src-git Kwrt https://github.com/kiddin9/kwrt-packages' >>feeds.conf.default
# sed -i "1isrc-git 2305ipk https://github.com/xiangfeidexiaohuo/2305-ipk\n" feeds.conf.default
