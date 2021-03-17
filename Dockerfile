FROM node:14.9


RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

# 修改时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && mkdir -p /usr/src/app

WORKDIR /usr/src/app
