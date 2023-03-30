variable "apic_password" {
}

provider "aci" {
  username = "username"
  password = "password"
  url      = "https://apic.url"
  insecure = true
  retries  = 4
}

module "aci" {
  source = "github.com/netascode/terraform-aci-nac-aci.git?ref=main"

  yaml_directories = ["./data" ]
  write_default_values_file = "./defaults/defaults.yaml"

  manage_access_policies    = true
  manage_fabric_policies    = true
  manage_pod_policies       = true
  manage_node_policies      = true
  manage_interface_policies = true
  manage_tenants            = true
    
}
 