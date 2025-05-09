---
title: "Rancher部署"
---

## Rancher部署至数云

#### 创建资源目录

```bash
sudo mkdir -p /data/zhishuyun
sudo chown -R zhishuyun:zhishuyun /data/zhishuyun 
```

#### 下载配置文件

```bash
mkdir -p /data/zhishuyun/conf
cd /data/zhishuyun/conf
wget https://gitee.com/isxcode/camunda-yun/raw/main/camunda-yun-backend/camunda-yun-main/src/main/resources/application-docker.yml
```

#### 编辑配置文件(可选操作)

```bash
vim /data/zhishuyun/conf/application-docker.yml
```

```yml
server:
  port: 8080

spring:
  security:
    user:
      name: admin
      password: admin123

  datasource:
    driver-class-name: org.h2.Driver
    url: jdbc:h2:file:/var/lib/zhishuyun/h2/data;AUTO_SERVER=TRUE
    username: root
    password: root123

jasypt:
  encryptor:
    password: zhishuyun

logging:
  file:
    name: /var/lib/zhishuyun/logs/camunda-yun.log

# 应用配置
isx-app:
  resources-path: /var/lib/zhishuyun
  use-ssl: false
  docker-mode: true
```

#### 新建department

![20250115175052](https://img.isxcode.com/picgo/20250115175052.png)

#### 挂载磁盘

> 挂载目录`/data/zhishuyun`

![20250115175633](https://img.isxcode.com/picgo/20250115175633.png)

#### 配置镜像地址

Name: zhishuyun  
Image: registry.cn-shanghai.aliyuncs.com/isxcode/zhishuyun:latest-amd64   
Pull Policy: IfNotPresent  

![20250115175850](https://img.isxcode.com/picgo/20250115175850.png)

#### 配置端口号

> Name: zhishuyun-port   
> 将`8080`端口号映射到`30001`

![20250115180128](https://img.isxcode.com/picgo/20250115180128.png)

#### 配置管理员登录密码

> ADMIN_PASSWORD: admin123 (可自定义)

![20250115180002](https://img.isxcode.com/picgo/20250115180002.png)

#### 映射容器路径

 > `/var/lib/zhishuyun`映射到`zhishuyun`  
 > `/etc/zhishuyun/conf`映射到`conf`

![20250115180053](https://img.isxcode.com/picgo/20250115180053.png)

#### 访问服务

访问地址：http://39.100.75.11:30001   
管理员账号：admin  
账号密码：admin123  

![20250115181005](https://img.isxcode.com/picgo/20250115181005.png)

#### 查看系统资源

```bash
cd /data/zhishuyun/zhishuyun

drwxr-xr-x 3 root       root       4096 Jan 15 18:11 file    # 用户上传的资源中心文件目录
drwxr-xr-x 2 root       root       4096 Jan 15 18:08 h2      # 系统数据库h2数据
drwxr-xr-x 2 root       root       4096 Jan 15 18:11 license # 许可证路径
drwxr-xr-x 2 root       root       4096 Jan 15 18:04 logs    # 系统运行日志
```