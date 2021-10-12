FROM node:16.11-buster-slim
LABEL MAINTAINER="salamander"

# 修改时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && mkdir -p /usr/src/app && \
    apt update && apt install -y curl && \
    sed -i 's#http://deb.debian.org#http://mirrors.aliyun.com#g' /etc/apt/sources.list

WORKDIR /usr/src/app
