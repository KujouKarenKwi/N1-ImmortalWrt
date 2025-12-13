# 简介
本固件适配斐讯 N1 旁路由模式，默认 Argon 主题。<br>
包含：[luci-app-amlogic](https://github.com/ophub/luci-app-amlogic)、luci-app-dockerman、[luci-app-passwall](https://github.com/xiaorouji/openwrt-passwall)、luci-app-samba4、[luci-app-adguardhome](https://github.com/stevenjoezhang/luci-app-adguardhome)、luci-app-hd_idle、luci-app-wechatpush。
# 描述
AdGuardHome 监听 53 端口，请求发送至上游 Passwall 的 ChinaDNS-NG(127.0.0.1:15355)，由 Passwall 完成分流和解析<br>
AdGuardHome 默认过滤规则为 [217heidai/adblockfilters](https://github.com/217heidai/adblockfilters) 编译当日最新完整规则
Passwall 默认包含编译当日最新 geosite 及 geoIP 数据，注意关闭 Passwall 和 Dnsmasq 的 DNS 重定向功能<br>
接口默认忽略 DHCP，关闭所有 IPv6 功能，自带 Dnsmasq 改为监听 54 端口(废弃)<br>

# 致谢
采用 [ImmortalWrt-24.10](https://github.com/immortalwrt/immortalwrt/tree/openwrt-24.10) 源码编译；<br>
采用 breakingbadboy 维护的[内核](https://github.com/breakingbadboy/OpenWrt/releases/tag/kernel_stable)；<br>
使用 [flippy](https://www.right.com.cn/forum/thread-4076037-1-1.html) 的[脚本](https://github.com/unifreq/openwrt_packit)，Workflow 基于 [nantayo](https://github.com/nantayo/N1-OpenWrt)。
