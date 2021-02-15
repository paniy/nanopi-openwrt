echo -e '\nsrc-git lienol https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default
./scripts/feeds update lienol
rm -rf feeds/lienol/lienol/ipt2socks
rm -rf feeds/lienol/lienol/shadowsocksr-libev
rm -rf feeds/lienol/lienol/pdnsd-alt
rm -rf feeds/lienol/lienol/luci-app-verysync
rm -rf feeds/lienol/package/verysync
#rm -rf feeds/lienol/package/chinadns-ng
rm -rf package/lean/openwrt-chinadns-ng
rm -rf package/lean/luci-app-kodexplorer
rm -rf package/lean/luci-app-pppoe-relay
rm -rf package/lean/luci-app-pptp-server
rm -rf package/lean/luci-app-v2ray-server
#rm -rf package/lean/luci-app-passwall/ && svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall
sed -i 's,default n,default y,g' feeds/lienol/luci-app-passwall/Makefile
sed -i '/V2ray:v2ray/d' feeds/lienol/luci-app-passwall/Makefile
sed -i '/plugin:v2ray/d' feeds/lienol/luci-app-passwall/Makefile
./scripts/feeds install -a -p lienol
