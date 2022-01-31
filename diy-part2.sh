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
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# echo "修改机器名称"
#sed -i "s/OpenWrt/R3/g" package/base-files/files/bin/config_generate

# echo '添加Leo-Jo-My的Hello World,并且使用默认包配置'
git clone $vssr_plus_rely package/lean/luci-vssr-plus-rely
git clone $vssr_plus_rely package/lean/luci-app-vssr-plus
echo 'CONFIG_PACKAGE_luci-app-vssr-plus=y' >> .config
echo 'CONFIG_PACKAGE_luci-i18n-vssr-plus-zh-cn=y'  >> .config
