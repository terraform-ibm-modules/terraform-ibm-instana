/********************************************************************
This file is used to implement the ROOT module.
*********************************************************************/
resource "helm_release" "instana_agent" {
  name       = "instana-agent"
  repository = "https://agents.instana.io/helm"
  chart      = "instana-agent"
  namespace  = "instana-agent"

  create_namespace = true

  set {
    name  = "agent.key"
    value = var.agent_key
  }

  set {
    name  = "agent.endpointHost"
    value = var.agent_endpoint_host
  }

  set {
    name  = "agent.endpointPort"
    value = var.agent_endpoint_port
  }

  set {
    name  = "agent.proxyHost"
    value = var.proxy_host
  }

  set {
    name  = "agent.proxyPort"
    value = var.proxy_port
  }

  set {
    name  = "agent.proxyProtocol"
    value = var.proxy_protocol
  }

  set {
    name  = "cluster.name"
    value = var.cluster_name
  }

  set {
    name  = "zone.name"
    value = var.zone_name
  }
}

resource "helm_release" "instana_pop" {
  count            = var.pop_provision ? 1 : 0
  name             = "instana-pop"
  namespace        = "instana-pop"
  repository       = "https://agents.instana.io/helm"
  chart            = "synthetic-pop"
  create_namespace = true

  set {
    name  = "downloadKey"
    value = var.agent_key
  }

  set {
    name  = "controller.location"
    value = "${var.cluster_name};${var.cluster_name};${var.country};${var.city};0;0;${var.cluster_name} provisioned by cpp-instana-module"
  }

  set {
    name  = "controller.instanaKey"
    value = var.agent_key
  }

  set {
    name  = "controller.clusterName"
    value = var.cluster_name
  }

  set {
    name  = "controller.instanaSyntheticEndpoint"
    value = var.pop_syntheticendpoint
  }

  set {
    name  = "redis.tls.enabled"
    value = var.pop_redis_tls_enabled
  }

  set {
    name  = "redis.password"
    value = var.pop_redis_password
  }

  set {
    name  = "proxy.popProxyServer"
    value = (var.proxy_host != null && var.proxy_port != null) ? "${var.proxy_host}:${var.proxy_port}" : null
  }

  set {
    name  = "proxy.popProxyProtocol"
    value = var.proxy_protocol
  }
}
