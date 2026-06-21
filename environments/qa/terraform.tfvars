# prefix      = "contoso"
# environment = "qa"
# location    = "eastus2"

# # Networking Configuration (QA specific CIDR)
# vnet_cidr = "10.20.0.0/16"

# subnets = {
#   "aks-subnet" = {
#     address_prefixes = ["10.20.0.0/20"]
#   }
#   "pe-subnet" = {
#     address_prefixes                          = ["10.20.16.0/24"]
#     private_endpoint_network_policies_enabled = true
#   }
#   "AzureBastionSubnet" = {
#     address_prefixes = ["10.20.17.0/26"]
#   }
#   "gateway-subnet" = {
#     address_prefixes = ["10.20.18.0/24"]
#   }
# }

# # Monitoring Configuration
# log_analytics_retention_days = 30

# # PaaS Configuration
# acr_sku                          = "Premium"
# key_vault_sku                    = "standard"
# storage_account_tier             = "Standard"
# storage_account_replication_type = "LRS"

# # AKS Configuration
kubernetes_version    = "1.30"
aks_system_node_size  = "Standard_D2s_v5"
# aks_system_node_count = 2

# aks_user_node_pools = {
#   "userpool1" = {
#     vm_size         = "Standard_D2s_v5"
#     node_count      = 2
#     min_count       = 2
#     max_count       = 5
#     os_disk_size_gb = 128
#     zones           = ["1", "2"]
#     node_labels = {
#       "environment" = "qa"
#       "nodepool"    = "apps"
#     }
#   }
# }

# # Placeholder Active Directory Admin Group
# aks_admin_group_object_ids = ["00000000-0000-0000-0000-000000000000"]

# tags = {
#   Environment = "qa"
#   CostCenter  = "101-IT-QA"
# }
