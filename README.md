# IBM Instana Agent and POP IaC module

<!--
Update status and "latest release" badges:
  1. For the status options, see https://terraform-ibm-modules.github.io/documentation/#/badge-status
  2. Update the "latest release" badge to point to the correct module's repo. Replace "terraform-ibm-module-template" in two places.
-->
[![Incubating (Not yet consumable)](https://img.shields.io/badge/status-Incubating%20(Not%20yet%20consumable)-red)](https://terraform-ibm-modules.github.io/documentation/#/badge-status)
[![latest release](https://img.shields.io/github/v/release/terraform-ibm-modules/terraform-ibm-instana?logo=GitHub&sort=semver)](https://github.com/terraform-ibm-modules/terraform-ibm-instana/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![Renovate enabled](https://img.shields.io/badge/renovate-enabled-brightgreen.svg)](https://renovatebot.com/)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)

This module provides a Terraform capability to deploy Instana Agent and/or POP into arbitrary Kubernetes cluster.
Module is utilising the official Instana Helm repository.
Active Instana SaaS account is required to make use of the module.

<!-- The following content is automatically populated by the pre-commit hook -->
<!-- BEGIN OVERVIEW HOOK -->
## Overview
* [terraform-ibm-instana](#terraform-ibm-instana)
* [Examples](./examples)
* [Contributing](#contributing)
<!-- END OVERVIEW HOOK -->

## terraform-ibm-instana

### Usage

See examples above

### Required IAM access policies

You need the following permissions to run this module:

- Administrative access to the target Kubernetes cluster allowing deployment of Helm releases
  - Namespaces targeted by default are instana-agent and instana-pop

<!-- The following content is automatically populated by the pre-commit hook -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0, <1.6.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.12.1 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [helm_release.instana_agent](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.instana_pop](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_endpoint_host"></a> [agent\_endpoint\_host](#input\_agent\_endpoint\_host) | The Instana endpoint | `string` | `"ingress-coral-saas.instana.io"` | no |
| <a name="input_agent_endpoint_port"></a> [agent\_endpoint\_port](#input\_agent\_endpoint\_port) | The Instana endpoint port | `string` | `"443"` | no |
| <a name="input_agent_key"></a> [agent\_key](#input\_agent\_key) | The Instana agent key | `string` | n/a | yes |
| <a name="input_city"></a> [city](#input\_city) | The name of the city for location | `string` | `"Dallas"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the EKS cluster | `string` | n/a | yes |
| <a name="input_country"></a> [country](#input\_country) | The name of the country for location | `string` | `"US"` | no |
| <a name="input_pop_provision"></a> [pop\_provision](#input\_pop\_provision) | Flag to provision Instana POP | `bool` | `false` | no |
| <a name="input_pop_redis_password"></a> [pop\_redis\_password](#input\_pop\_redis\_password) | The authentication password to redis server | `string` | n/a | yes |
| <a name="input_pop_redis_tls_enabled"></a> [pop\_redis\_tls\_enabled](#input\_pop\_redis\_tls\_enabled) | Define if enabling Redis TLS or not | `bool` | `"false"` | no |
| <a name="input_pop_syntheticendpoint"></a> [pop\_syntheticendpoint](#input\_pop\_syntheticendpoint) | The ingress endpoint of Synthetic acceptor in Instana backend. | `string` | `"https://synthetics-coral-saas.instana.io"` | no |
| <a name="input_proxy_host"></a> [proxy\_host](#input\_proxy\_host) | Proxy server hostname only | `string` | `null` | no |
| <a name="input_proxy_port"></a> [proxy\_port](#input\_proxy\_port) | Proxy server port only | `string` | `null` | no |
| <a name="input_proxy_protocol"></a> [proxy\_protocol](#input\_proxy\_protocol) | Proxy server hostname only | `string` | `"http"` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The name of the zone | `string` | `"classic-plus-plus"` | no |

### Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing

You can report issues and request features for this module in GitHub issues in the module repo. See [Report an issue or request a feature](https://github.com/terraform-ibm-modules/.github/blob/main/.github/SUPPORT.md).

To set up your local development environment, see [Local development setup](https://terraform-ibm-modules.github.io/documentation/#/local-dev-setup) in the project documentation.
