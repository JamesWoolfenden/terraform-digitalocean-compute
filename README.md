# terraform-digitalocean-compute

[![Build Status](https://github.com/JamesWoolfenden/terraform-digitalocean-compute/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-digitalocean-compute)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-digitalocean-compute.svg)](https://github.com/JamesWoolfenden/terraform-digitalocean-compute/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a very basic example for how to provision a droplet in DigitalOcean, It requires a Personal Access token that is added as an environment variable:
**DIGITALOCEAN_ACCESS_TOKEN**

Inspired by a Rancher example.

Include **module.compute.tf** this repository as a module in your existing terraform code:

```terraform
module "compute" {
  source      = "JamesWoolfenden/compute/digitalocean"
  version     = "0.0.2"
  docker_cmd="docker run -d --restart=unless-stopped -p 8080:8080 rancher/server:${var.rancher_version_tag}"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| digitalocean | 2.0.0 |
| template | 2.2.0 |

## Providers

| Name | Version |
|------|---------|
| digitalocean | 2.0.0 |
| template | 2.2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| do\_droplet\_size | n/a | `string` | `"2gb"` | no |
| do\_region | n/a | `string` | `"lon1"` | no |
| docker\_cmd | n/a | `any` | n/a | yes |
| image | n/a | `string` | `"ubuntu-16-04-x64"` | no |
| instance\_type | n/a | `string` | `"node"` | no |
| node\_count | n/a | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| instances | n/a |
| server-ip | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-digitalocean-compute/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-digitalocean-compute/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2020 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-digitalocean-compute&url=https://github.com/JamesWoolfenden/terraform-digitalocean-compute
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-digitalocean-compute&url=https://github.com/JamesWoolfenden/terraform-digitalocean-compute
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-digitalocean-compute
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-digitalocean-compute
[share_email]: mailto:?subject=terraform-digitalocean-compute&body=https://github.com/JamesWoolfenden/terraform-digitalocean-compute
