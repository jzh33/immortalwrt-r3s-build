#!/bin/bash
set -e

# ============================================
# DIY 脚本：引入 luci-app-daed（官方源里没有）
# 在 openwrt 源码根目录下执行
# ============================================

# luci-app-daed 来自 QiuSimons 的仓库（支持 ImmortalWrt 24.10 / master）
rm -rf package/dae
git clone --depth=1 https://github.com/QiuSimons/luci-app-daed package/dae

# 只保留 luci-app-daed；daed 本体使用 ImmortalWrt 官方 packages 源里的版本，避免冲突
rm -rf package/dae/daed package/dae/patchset package/dae/PIC package/dae/.github

echo "DIY 完成：luci-app-daed 已就位"
