#!/bin/bash

# Adjust source code
patch -p1 -f < $(dirname "$0")/luci.patch

# Add packages
git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
git clone https://github.com/Openwrt-Passwall/openwrt-passwall --depth=1 clone/passwall
git clone https://github.com/stevenjoezhang/luci-app-adguardhome --depth=1 clone/luci-app-adguardhome

# Update packages
rm -rf feeds/luci/applications/luci-app-passwall
cp -rf clone/amlogic/luci-app-amlogic clone/passwall/luci-app-passwall feeds/luci/applications/
cp -rf clone/luci-app-adguardhome feeds/luci/applications/

# Clean packages
rm -rf clone

# 强制禁用 Rust 的 LLVM 远端预编译包下载，改为云端本地编译以绕过 404 错误
echo "Forcing Rust to compile LLVM locally to avoid 404 download errors..."
sed -i 's/download-ci-llvm = true/download-ci-llvm = false/g' feeds/packages/lang/rust/Makefile
