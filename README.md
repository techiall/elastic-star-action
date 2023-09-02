# Elasticsearch action

## 背景

Elasticsearch 有很多个版本，虽然用 docker 可以一键部署

**但是**部署完也需要安装插件，基于国内环境，下载 ik，pinyin 插件巨慢无比。

为了解决这个问题，这个项目诞生了

利用 GitHub Action，基于 Elasticsearch 镜像，安装插件，并发布


## 版本

https://github.com/techiall/elasticsearch-action/pkgs/container/elasticsearch
