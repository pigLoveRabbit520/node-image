FROM node:14.16
LABEL MAINTAINER="salamander"

# 修改时区
ENV TZ=Asia/Shanghai
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && mkdir -p /usr/src/app && \
    sed -i 's#http://deb.debian.org#http://mirrors.aliyun.com#g' /etc/apt/sources.list

WORKDIR /usr/src/app
