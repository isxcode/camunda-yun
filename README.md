# 至数云

### 超轻量级低代码流程平台/应用构建/企业流程

[![Docker Pulls](https://img.shields.io/docker/pulls/isxcode/zhishuyun)](https://hub.docker.com/r/isxcode/zhishuyun)
[![build](https://github.com/isxcode/camunda-yun/actions/workflows/build-app.yml/badge.svg?branch=main)](https://github.com/isxcode/camunda-yun/actions/workflows/build-app.yml)
[![GitHub Repo stars](https://img.shields.io/github/stars/isxcode/camunda-yun)](https://github.com/isxcode/camunda-yun)
[![GitHub forks](https://img.shields.io/github/forks/isxcode/camunda-yun)](https://github.com/isxcode/camunda-yun/fork)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fisxcode%2Fcamunda-yun.svg?type=shield&issueType=license)](https://app.fossa.com/projects/git%2Bgithub.com%2Fisxcode%2Fcamunda-yun?ref=badge_shield&issueType=license)
[![GitHub License](https://img.shields.io/github/license/isxcode/camunda-yun)](https://github.com/isxcode/camunda-yun/blob/main/LICENSE)

|             |                                                                                                                                                         |
|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| 官网地址:       | https://zhishuyun.isxcode.com                                                                                                                           |
| 源码地址:       | https://github.com/isxcode/camunda-yun                                                                                                                  |
| 演示环境:       | https://zhishuyun-demo.isxcode.com                                                                                                                      |
| 安装包下载:      | https://isxcode.oss-cn-shanghai.aliyuncs.com/zhishuyun/zhishuyun.tar.gz                                                                                 |
| 许可证下载:      | https://isxcode.oss-cn-shanghai.aliyuncs.com/zhishuyun/license.lic                                                                                      |
| Docker Hub: | https://hub.docker.com/r/isxcode/zhishuyun                                                                                                              |
| 阿里云镜像:      | https://zhishuyun.isxcode.com/zh/docs/zh/1/1-docker                                                                                                     |
| 产品矩阵:       | [至轻云](https://zhiqingyun.isxcode.com), [至流云](https://zhiliuyun.isxcode.com), [至慧云](https://zhihuiyun.isxcode.com), [至数云](https://zhishuyun.isxcode.com) |
| 关键词:        | 低代码平台, 表单分享, 应用搭建, 云原生, Camunda, Docker, Rancher                                                                                                        |
|             |                                                                                                                                                         |

### 产品介绍

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;至数云是一款超轻量级、企业级低代码流程平台，基于Camunda生态打造。一键部署，开箱即用。快速实现应用搭建、流程配置、分享表单等多种功能，为企业提供高效便捷的低代码解决方案。

### 功能特点

- **轻量级产品**: 无需额外组件安装，一键部署，开箱即用。
- **云原生私有化**: 兼容云原生架构，支持多节点安装与高可用集群部署。
- **流程管理**: 基于原生Camunda流程架构，高效地执行复杂业务流程。

### 立即体验

> [!TIP]
> 演示地址：https://zhishuyun-demo.isxcode.com </br>
> 体验账号：user001 </br>
> 账号密码：welcome1

### 快速部署

> [!NOTE]
> 访问地址：http://localhost:8080 <br/>
> 管理员账号：admin <br/>
> 管理员密码：admin123

```bash
docker run -p 8080:8080 -d isxcode/zhishuyun
```

### 相关文档

- [快速入门](https://zhishuyun.isxcode.com/zh/docs/zh/1/0)
- [产品手册](https://zhishuyun.isxcode.com/zh/docs/zh/2/0)
- [开发手册](https://zhishuyun.isxcode.com/zh/docs/zh/6/1)
- [博客](https://ispong.isxcode.com/tags/spring/)

### 源码构建

> [!WARNING]
> 编译环境需访问外网，且需提前安装Nodejs和Java，推荐版本如下: </br>
> Java: zulu8.78.0.19-ca-jdk8.0.412-x64 </br>
> Nodejs: node-v18.20.3-x64

##### MacOS/Linux

> [!IMPORTANT]
> 安装包路径: camunda-yun/camunda-yun-dist/build/distributions/zhishuyun.tar.gz

```bash
git clone https://github.com/isxcode/camunda-yun.git
cd camunda-yun
./gradlew install clean package
```

##### Windows10/11

> [!CAUTION]
> 请使用Git Bash终端工具执行以下命令

```bash
git clone https://github.com/isxcode/camunda-yun.git
cd camunda-yun
./gradlew.bat install clean package
```

### 收藏历史

[![Star History Chart](https://api.star-history.com/svg?repos=isxcode/camunda-yun&type=Date)](https://www.star-history.com/#isxcode/camunda-yun&Date)