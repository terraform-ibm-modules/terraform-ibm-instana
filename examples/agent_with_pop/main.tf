#######################################################################################################################
# Instana Agent and POP example
#######################################################################################################################

module "instana_module" {
  source                = "../../"
  zone_name             = "my-agent-zone-name"
  cluster_name          = "we-use-ibmcloud-cluster"
  agent_key             = ""
  agent_endpoint_host   = "ingress-coral-saas.instana.io"			# Non Production SaaS link 
  pop_syntheticendpoint = "https://synthetics-coral-saas.instana.io"		# Non Production Synthetic link
  pop_provision         = true
  pop_redis_password    = ""
  proxy_host            = null
  proxy_port            = null
  country               = "US"
  city                  = "Dallas"
}
