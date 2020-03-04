# elasticsearch star action

## 背景

elasticsearch 有很多个版本，虽然用 docker 可以一键部署

**但是**部署完也需要安装插件，基于国内环境，下载 ik，pinyin 插件巨慢无比。

为了解决这个问题，这个项目诞生了。

利用 GitHub Action，基于 elasticsearch 镜像，安装插件，并发布。


## 说明

* `.env` 修改 es 镜像版本

* `docker-compose-build.yml` 构建 es 镜像

* `docker-compose.yml` 拉取构建镜像并运行