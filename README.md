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
  source = "github.com/canada-ca-terraform-modules/terraform-kubernetes-sidecar-terminator?ref=v2.0.0"

  depends_on = [
    module.namespace_kube_system,
  ]

  kubectl_namespace = module.namespace_kube_system.name
}
```

## Variables Values

| Name                    | Type | Required | Value                                                  |
| ----------------------- | ---- | -------- | ------------------------------------------------------ |
| kubectl_namespace       | list | yes      | The namespace kubectl will install the manifests under |

## History

| Date     | Release    | Change                                        |
| -------- | ---------- | --------------------------------------------- |
| 20190729 | 20190729.1 | Improvements to documentation and formatting  |
| 20190909 | 20190909.1 | 1st release                                   |
| 20190909 | v1.0.0     | Move to SEMVER for versioning                 |
| 20210825 | v2.0.0     | Update module for Terraform v0.13 and cleanup |
