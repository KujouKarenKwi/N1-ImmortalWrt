# 项目简介
本固件适配斐讯 N1 旁路由模式，默认Argon主题，默认关闭IPv6。<br>
包含：<br>
[luci-app-amlogic](https://github.com/ophub/luci-app-amlogic)<br>
luci-app-dockerman<br>
[luci-app-passwall](https://github.com/xiaorouji/openwrt-passwall)（已包含 geosite 及 geoIP 的 data 文件）<br>
luci-app-samba4<br>
[luci-app-adguardhome](https://github.com/stevenjoezhang/luci-app-adguardhome)<br>
  AdGuardHome 监听 53 端口，请求发送至上游 Passwall 的 ChinaDNS-NG(127.0.0.1:15355)，由 Passwall 完成分流和解析，Dnsmasq 改为 54 端口。<br>
  AdGuardHome 默认过滤规则为 [217heidai/adblockfilters](https://github.com/217heidai/adblockfilters) 完整规则。
# 致谢
采用 [ImmortalWrt-24.10](https://github.com/immortalwrt/immortalwrt/tree/openwrt-24.10) 源码编译；<br>
采用 breakingbadboy 维护的[内核](https://github.com/breakingbadboy/OpenWrt/releases/tag/kernel_stable)；<br>
使用 [flippy](https://www.right.com.cn/forum/thread-4076037-1-1.html) 的[脚本](https://github.com/unifreq/openwrt_packit)，Workflow基于[nantayo](https://github.com/nantayo/N1-OpenWrt)。
