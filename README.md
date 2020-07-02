＃okteto重新启动

okteto开发.yml触发规则  点star 和UTC时间 22:10

参考 http://www.beijing-time.org/time15.asp

测试用开发环境部署v2ray

开发文档：https://okteto.com/docs/reference/development-environment

6.28 镜像被okteto禁用了

Error creating: admission webhook "pod.webhook.okteto.com" denied the request: your image does not adhere to our terms of service.

鉴于okteto会封镜像 已采用开发环境 自行构造v2ray docker

okteto开发.yml  待测试中

okteto.yml已停用


每天早上6.22自动执行重新部署

教程：https://704sjf.coding-pages.com/post/hello-gridea/

定时强制部署okteto项目
项目中v2的链接   自行替换成自己的域名
vmess://ew0KICAidiI6ICIyIiwNCiAgInBzIjogIm9rdGV0byIsDQogICJhZGQiOiAieHguY2xvdWQub2t0ZXRvLm5ldCIsDQogICJwb3J0IjogIjQ0MyIsDQogICJpZCI6ICJhZDgwNjQ4Ny0yZDI2LTQ2MzYtOThiNi1hYjg1Y2M4NTIxZjciLA0KICAiYWlkIjogIjQiLA0KICAibmV0IjogIndzIiwNCiAgInR5cGUiOiAibm9uZSIsDQogICJob3N0IjogIiIsDQogICJwYXRoIjogIi93cyIsDQogICJ0bHMiOiAidGxzIg0KfQ==


UUID/密码：ad806487-2d26-4636-98b6-ab85cc8521f7

WS转发路径（path/obfs-uri）：/ws
