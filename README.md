V2Ray on IBM Cloud Kubernetes Service
===
在 IBM Cloud Kubernetes Service 上部署 V2Ray VMess & Shadowsocks DUAL servers with WebSocket & TLS via Caddy's proxy。通过 Caddy 实现 TLS 传输。

需要准备好域名与邮箱，用于 Caddy 自动申请与更新证书。

默认区域为美国达拉斯，其他区域需加参数，如悉尼要加参数 au，依此类推。

默认部署没有 BBR，需要的话，另加参数 bbr。

---

## 通过 IBM Cloud Kubernetes Terminal 部署

    bash <(curl -Ls https://raw.githubusercontent.com/jogolor/V2RoIBMCKS/master/start.sh)

---

## 通过 Web IDE 部署

先准备环境：

    bash <(curl -Ls https://raw.githubusercontent.com/jogolor/V2RoIBMCKS/master/initide.sh)
    
再实施部署：

    bash <(curl -Ls https://raw.githubusercontent.com/jogolor/V2RoIBMCKS/master/start4ide.sh)
