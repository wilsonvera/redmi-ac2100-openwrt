#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#!/bin/bash
# 本脚本工作目录必须是git仓库的主目录
# Add Some Package
cd openwrt && ./scripts/feeds update -a

rm -rf package/lean/luci-app-jd-dailybonus package/lean/luci-theme-argon
rm -rf package/feeds/packages/smartdns
mkdir -p package/custom && cd package/custom
git clone --depth=1 -b lede https://github.com/pymumu/luci-app-smartdns.git
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-jd-dailybonus.git
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr.git
git clone --depth=1 https://github.com/pymumu/smartdns.git
git clone --depth=1 https://github.com/vernesong/OpenClash.git
git clone --depth=1 https://github.com/fw876/helloworld.git
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall.git
