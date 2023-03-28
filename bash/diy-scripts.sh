#!/bin/bash

# Uncomment a feed source
##sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#sed -i '1i src-git haibo https://github.com/haiibo/openwrt-packages' feeds.conf.default

# LINUX_VERSION
#sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=$(LINUX_VERSION)-/g' include/image.mk
#
sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile
sed -i 's/192.168.1.1/192.168.2.88/g' package/base-files/files/bin/config_generate
sed -i '5i uci set system.@system[0].hostname=DinG' package/lean/default-settings/files/zzz-default-settings

sed -i 's/os.date(/&"%Y-%m-%d %H:%M:%S"/' package/lean/autocore/files/x86/index.htm
# 关闭串口跑码
#sed -i 's/console=tty0//g'  target/linux/x86/image/Makefile
#sed -i 's/%V, %C/[Year] | by Jason /g' package/base-files/files/etc/banner
sed -i "s/Year/$(TZ=':Asia/Shanghai' date '+%Y')/g" package/base-files/files/etc/banner
#sed -i '/logins./a\                                          by Jason' package/base-files/files/etc/profile
# Modify default passwd
#sed -i '/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF./ d' package/lean/default-settings/files/zzz-default-settings
# ID
#sed -i "s/DISTRIB_REVISION='R.*.*.[0-9]/& Compiled by Jason/" package/lean/default-settings/files/zzz-default-settings
rm -rf ./package/base-files/files/etc/banner
rm -rf ./feeds/luci/themes/luci-theme-argon
rm -rf ./feeds/haibo/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git ./package/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-argon-config.git ./package/lean/luci-app-argon-config
       
svn co https://github.com/Joshua-DinG/Build-OpenWRT/trunk/firmware/banner ./package/base-files/files/etc/
rm -rf ./package/base-files/files/etc/.svn/
svn co https://github.com/Joshua-DinG/Build-OpenWRT/trunk/argon/video/default ./package/luci-theme-argon/htdocs/luci-static/argon/background/
rm -rf ./package/luci-theme-argon/htdocs/luci-static/argon/background/.svn/
# 临时
sed -i s/5.15/6.1/g  target/linux/x86/Makefile
