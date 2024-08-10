#######################################################################################################################
# Instana Agent only example
#######################################################################################################################

module "instana_module" {
  source                = "../../"
  zone_name             = "my-agent-zone-name"
  cluster_name          = "we-use-ibmcloud-cluster"
  agent_key             = "take-it-from-your-saas-instance"
  agent_endpoint_host   = "ingress-coral-saas.instana.io"			# Non Production SaaS link 
}
