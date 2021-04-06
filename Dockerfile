FROM node:14.16-buster-slim
LABEL MAINTAINER="salamander"

# 修改时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && mkdir -p /usr/src/app && \
 apt update && apt install -y curl

WORKDIR /usr/src/app
