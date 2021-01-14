# Terraform Kubernetes Sidecar Terminator

## Introduction

This module deploys and configures Sidecar Terminator inside a Kubernetes Cluster.

## Security Controls

The following security controls can be met through configuration of this template:

* TBD

## Dependencies

* None

## Optional (depending on options configured):

* None

## Usage

```terraform
module "kubectl_sidecar_terminator" {
  source = "github.com/canada-ca-terraform-modules/terraform-kubernetes-sidecar-terminator?ref=20190909.1"

  dependencies = [
    module.namespace_istio_system.depended_on,
  ]

  kubectl_service_account = "tiller"
  kubectl_namespace = "kube-syste
}
```

## Variables Values

| Name                    | Type   | Required | Value                                                  |
| ----------------------- | ------ | -------- | ------------------------------------------------------ |
| dependencies            | list   | yes      | Dependency name refering to namespace module           |
| kubectl_service_account | list   | yes      | The service account for kubectl to use                 |
| kubectl_namespace       | list   | yes      | The namespace kubectl will install the manifests under |

## History

| Date     | Release    | Change                                                     |
| -------- | ---------- | ---------------------------------------------------------- |
| 20190729 | 20190729.1 | Improvements to documentation and formatting               |
| 20190909 | 20190909.1 | 1st release                                                |
