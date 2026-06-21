# prefix      = "contoso"
# environment = "prod"
# location    = "eastus2"

# # Networking Configuration (Prod specific CIDR)
# vnet_cidr = "10.30.0.0/16"

# subnets = {
#   "aks-subnet" = {
#     address_prefixes = ["10.30.0.0/20"]
#   }
#   "pe-subnet" = {
#     address_prefixes                          = ["10.30.16.0/24"]
#     private_endpoint_network_policies_enabled = true
#   }
#   "AzureBastionSubnet" = {
#     address_prefixes = ["10.30.17.0/26"]
#   }
#   "gateway-subnet" = {
#     address_prefixes = ["10.30.18.0/24"]
#   }
# }

# # Monitoring Configuration
# log_analytics_retention_days = 90 # Extended retention for compliance

# # PaaS Configuration
# acr_sku                          = "Premium"
# key_vault_sku                    = "premium" # Premium Key Vault for HSM support in prod
# storage_account_tier             = "Standard"
# storage_account_replication_type = "ZRS" # Zone-redundant storage for production resilience

# # AKS Configuration
# kubernetes_version    = "1.30"            # Use newer target version for production
# aks_system_node_size  = "Standard_D4s_v5" # 4 vCPU, 16GB RAM for production control plane workloads
# aks_system_node_count = 3                 # Spanned across 3 availability zones

# aks_user_node_pools = {
#   "userpool1" = {
#     vm_size         = "Standard_D4s_v5"
#     node_count      = 3
#     min_count       = 3
#     max_count       = 10
#     os_disk_size_gb = 256
#     zones           = ["1", "2", "3"]
#     node_labels = {
#       "environment" = "prod"
#       "nodepool"    = "apps"
#     }
#   }
# }

# # Placeholder Active Directory Admin Group (replace with real Azure AD group Object ID)
# aks_admin_group_object_ids = ["00000000-0000-0000-0000-000000000000"]

# tags = {
#   Environment    = "prod"
#   CostCenter     = "101-IT-PROD"
#   BusinessImpact = "Critical"
# }
