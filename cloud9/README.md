# Cloud 9 Module

## Usage

```bash
# main.tf

module "cloud9" {
  source = "../../modules/cloud9"

  name      = "Cloud9InstanceName"
  region    = var.region
  subnet_id = "some-subnet"
  iam_user  = "arn:aws:iam::123456789012:user/someuser"
}
```

## Outputs

```bash
# outputs.tf

output "cloud9_url" {
  value       = module.cloud9.cloud9_url
  description = "The url of the cloud9 instance"
}
```

