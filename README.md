# Build-OpenWRT

### 集成插件
| 插件 | 说明 |
| ------------- | ------------- | ------------- |------------- |
| helloworld | SSR Plus+ PassWall 插件依赖 | 12 | 12 |
| luci-app-adguardhome | AdGuard Home 去广告 | 12 | 12 |
| luci-app-advanced | 系统高级设置 | 12 | 12 |

### 集成插件
| 反向代理SSL加密地址  |VPN SSL+TLS+私有IP隧道 | | 反向代理SSL地址  |VPN SSL+TLS+mTLS+私有IP隧道 |
|:---------------|:---------| ─ |:---------------|:--------------|
| SSL.TLS.CM:62001 | 192.168.88.88:62001 | | SSL.TLS.CM:62001 | 192.168.88.88:62005 |
| SSL.TLS.CM:62002 | 192.168.88.88:62002 | | SSL.TLS.CM:62001 | 192.168.88.88:62006 |
| SSL.TLS.CM:62003  | 192.168.88.88:62003 | | SSL.TLS.CM:62001 | 192.168.88.88:62007 |
| SSL.TLS.CM:62004  | 192.168.88.88:62004 | | SSL.TLS.CM:62001 | 192.168.88.88:62008 |
