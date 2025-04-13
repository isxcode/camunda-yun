#!/bin/bash

######################
# 检测安装环境脚本
######################

# 判断tar解压命令
if ! command -v tar &>/dev/null; then
  echo "【结果】：未检测到tar命令"
  exit 0
fi

# 判断是否有java命令
if ! command -v java &>/dev/null; then
  echo "【结果】：未检测到java1.8.x环境"
  exit 0
fi

# 判断java版本是否为1.8
java_version=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
if [[ "$java_version" != "1.8"* ]]; then
  echo "【结果】：未检测到java1.8.x环境"
  exit 0
fi

# 判断是否有kubectl命令
if ! command -v kubectl &>/dev/null; then
  echo "【结果】：未检测到kubectl命令"
  exit 0
fi

# 判断kubectl命令，是否可以访问k8s集群
if ! kubectl cluster-info &>/dev/null; then
  echo "【结果】：kubectl无法访问k8s集群"
  exit 0
fi


# 执行拉取spark镜像命令
if ! docker image inspect spark:3.4.1 &>/dev/null; then
  echo "【结果】：没有spark:3.4.1镜像，需要执行拉取镜像命令，docker pull spark:3.4.1 或者 docker pull registry.cn-shanghai.aliyuncs.com/isxcode/spark:3.4.1-amd64 && docker tag registry.cn-shanghai.aliyuncs.com/isxcode/spark:3.4.1-amd64 spark:3.4.1 "
  exit 0
fi

# 检测命名空间是否有camunda-yun
if ! kubectl get namespace zhishuyun-space &>/dev/null; then
  echo "【结果】：没有zhishuyun命令空间，需要执行命令，kubectl create namespace zhishuyun-space"
  exit 0
fi

# 判断是否存在zhishuyun用户
if ! kubectl get serviceaccount --namespace zhishuyun-space | grep -q zhishuyun; then
  echo "【结果】：zhishuyun命令空间中，不存在zhishuyun用户，需要执行命令，kubectl create serviceaccount zhishuyun -n zhishuyun-space "
  exit 0
fi

# 判断是否zhishuyun有读写权限
hasRole=$(kubectl auth can-i create pods --as=system:serviceaccount:zhishuyun-space:zhishuyun 2>&1)
if [ "$hasRole" = "no" ]; then
  echo "【结果】：zhishuyun没有创建pod的权限，需要执行命令，kubectl create clusterrolebinding spark-role --clusterrole=edit --serviceaccount=zhishuyun-space:zhishuyun --namespace=zhishuyun-space "
  exit 0
fi

echo "【结果】：允许启动"