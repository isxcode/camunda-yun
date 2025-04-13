#!/bin/bash

######################
# 清理日志脚本
######################

# hdfs 78% -> 48%
rm -rf /tmp/hadoop-zhishuyun/nm-local-dir/usercache/zhishuyun/filecache

# spark 48% -> 34%
rm -rf /data/spark/spark-3.4.1-bin-hadoop3/work

# k8s 34% -> 34%
kubectl delete --all pods --namespace=zhishuyun-space

# docker 34% -> 34%
docker ps -a | grep 'k8s_POD_zhishuyun-job-*' | awk '{print $1}' | xargs docker rm