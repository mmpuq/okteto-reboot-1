#!/bin/sh
#显示时间
date
cat << EOF > /usr/local/etc/v2ray/config.json
{
  "inbounds": [
  {
    "port": 9090,
    "listen":"127.0.0.1",
    "protocol": "vmess",
    "settings": {
      "clients": [
        {
          "id": "ad806487-2d26-4636-98b6-ab85cc8521f7",
          "alterId": 64       
        }
      ]
    },
    "streamSettings": {
      "network": "ws",
      "wsSettings": {
      "path": "/ws"
      }     
    }
  }
  ],
  "outbounds": [
  {
    "protocol": "freedom",
    "settings": {}
  }
  ]
}
EOF
# start nginx
nginx
# Run V2Ray
VERSION=$(/usr/local/bin/v2ray --version |grep V |awk '{print $2}')
REBOOTDATE=$(date)
sed -i "s/VERSION/$VERSION/g" /var/lib/nginx/html/index.html
sed -i "s/REBOOTDATE/$REBOOTDATE/g" /var/lib/nginx/html/index.html
/usr/local/bin/v2ray -config /usr/local/etc/v2ray/config.json

