package com.isxcode.star.api.agent.constants;

/**
 * 代理ks8s相关的静态配置.
 */
public interface AgentKubernetes {

    String SPARK_DOCKER_IMAGE = "spark:3.4.1";

    String NAMESPACE = "zhishuyun-space";

    String SERVICE_ACCOUNT_NAME = "zhishuyun";

    String PULL_POLICY = "IfNotPresent";
}
