<p align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://avatars.githubusercontent.com/u/15859888?s=200&v=4">
      <img src="https://avatars.githubusercontent.com/u/15859888?s=200&v=4" height="225">
    </picture>
    <picture>
      <img src="https://raw.githubusercontent.com/adnoctem/artwork/refs/heads/main/projects/terraform/icon/color/terraform-icon-color.png" height="225">
    </picture>
    <h1 align="center">Helm - Releases</h1>
</p>

A [Terraform module][module] to manage Helm releases on a Kubernetes cluster.

## ✨ TL;DR

```shell
module "my_module" {
  source = "github.com/adnoctem/terraform-helm-releases?ref=v1.0.0"
  ...
}
```

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | >= 2.9, < 3.0 |

## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_certificate_authority_data"></a> [cluster\_certificate\_authority\_data](#input\_cluster\_certificate\_authority\_data) | The TLS CA data of the Kubernetes cluster to apply resources to. | `string` | n/a | yes |
| <a name="input_cluster_host"></a> [cluster\_host](#input\_cluster\_host) | The hostname of your Kubernetes cluster's control plane endpoint to apply resources to. | `string` | n/a | yes |
| <a name="input_cluster_token"></a> [cluster\_token](#input\_cluster\_token) | The Kubernetes control plane API authorization token. | `string` | n/a | yes |
| <a name="input_create"></a> [create](#input\_create) | Whether or not to create Kubernetes resources. | `bool` | `true` | no |
| <a name="input_depends"></a> [depends](#input\_depends) | Terraform modules, on which this module depends. Analogous to 'depends\_on'. Terraform will make sure those get created first. | `list(any)` | `[]` | no |
| <a name="input_releases"></a> [releases](#input\_releases) | A map of Helm releases to be created. | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_releases"></a> [releases](#output\_releases) | A map of release names to their respective resource outputs. |
<!-- END_TF_DOCS -->

### 🔃 Contributing

Refer to our [documentation for contributors][contributing] for contributing guidelines, commit message
formats and versioning tips.

### 📥 Maintainers

This project is owned and maintained by [Ad Noctem Collective][org] refer to the [`AUTHORS`][authors] or [`CODEOWNERS`][owners]
for more information. You may also use the linked contact details to reach out directly.

### ©️ Copyright

- _Assets provided by:_ **[HashCorp][hashicorp]**
- _Sources provided by:_ **[Ad Noctem Collective][org]** under the **[MIT License][license]**

<!-- INTERNAL REFERENCES -->

<!-- Project references -->

<!-- File references -->

[license]: LICENSE
[contributing]: docs/CONTRIBUTING.md
[authors]: .github/AUTHORS
[owners]: .github/CODEOWNERS

<!-- General links -->

[org]: https://github.com/adnoctem
[hashicorp]: https://www.hashicorp.com/

<!-- Third-party -->

[module]: https://registry.terraform.io/modules/terraform-hetzner-modules/compute/server/latest
