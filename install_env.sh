#!/bin/bash

# 0. 下载
git clone ssh://distdev@58.17.133.80:15001/data/git/srv/yunyan_baotou.git

# 1. 运行安装docker
service docker start

# 2. 加载baotou环境镜像
docker load -i ./yunyan_baotou/baotou.tar

# 3. 查看docker images 情况
docker ps

# 4. 启动docker和服务
cd ./yunyan_baotou/src/business_ultra
sh ../myshell/run_docker.sh
