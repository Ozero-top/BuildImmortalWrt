#!/bin/bash
# ============================================================
# x86-64 / 25.12.x 专用第三方软件包清单
# 仅被 x86-64/build25.sh 引用；不会影响 Rockchip / sunxi / 无线路由构建
# ============================================================

# ---- 代理工具（只安装，不在首次启动时启用任何一套）----
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-openclash"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-passwall luci-i18n-passwall-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-passwall2 luci-i18n-passwall2-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-ssr-plus luci-i18n-ssr-plus-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-clashoo luci-i18n-clashoo-zh-cn"

# PassWall2 / SSR-Plus / OpenClash 依赖的代理内核与 nft 透明代理模块
CUSTOM_PACKAGES="$CUSTOM_PACKAGES kmod-nft-tproxy kmod-nft-socket kmod-tun kmod-inet-diag xray-core naiveproxy"

# ---- iStore 与 iStoreOS 风格主题 ----
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-store"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-argon luci-app-argon-config luci-i18n-argon-config-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-quickstart luci-i18n-quickstart-zh-cn quickstart"

# ---- Vantage 主题与仪表盘（apk 来自上游 Release，存放于 x86-64/apk-extra）----
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-theme-vantage luci-i18n-vantage-theme-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-vantage luci-i18n-vantage-zh-cn"

# ---- 系统与网络工具 ----
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-diskman luci-i18n-diskman-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-ttyd luci-i18n-ttyd-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-quickfile luci-i18n-quickfile-zh-cn quickfile"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-partexp luci-i18n-partexp-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-appfilter luci-i18n-appfilter-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-ddns-go luci-i18n-ddns-go-zh-cn"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-bandix luci-i18n-bandix-zh-cn bandix"
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-uninstall"

# ---- AdGuard Home Lite（本地 apk，来源 Ozero-top/luci-app-adguardhome-lite dist）----
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-adguardhome-lite"

# ---- AdGuard Home Lite 与部分旧版 LuCI 插件所需依赖 ----
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-compat luci-lib-jsonc luci-lua-runtime curl ca-bundle wget-ssl"

# ---- 自动安装 luci-app-lucky 及其中文语言包 ----
CUSTOM_PACKAGES="$CUSTOM_PACKAGES luci-app-lucky luci-i18n-lucky-zh-cn lucky"
