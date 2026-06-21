prefix      = "contoso"
environment = "dev"
location    = "eastus2"

# Set to true to deploy in a lightweight, cost-optimized, and quota-friendly mode for Azure for Students subscriptions.
# Set to false to deploy the full production-grade, secure enterprise-scale landing zone (requires premium SKUs/Bastion/NAT Gateway).
azure_for_student = true


# Networking Configuration (Dev specific CIDR)
vnet_cidr = "10.10.0.0/16"

subnets = {
  "aks-subnet" = {
    address_prefixes = ["10.10.0.0/20"]
  }
  "pe-subnet" = {
    address_prefixes                          = ["10.10.16.0/24"]
    private_endpoint_network_policies_enabled = true
  }
  "AzureBastionSubnet" = {
    address_prefixes = ["10.10.17.0/26"]
  }
  "gateway-subnet" = {
    address_prefixes = ["10.10.18.0/24"]
  }
}

# Monitoring Configuration
log_analytics_retention_days = 30

# PaaS Configuration
acr_sku                          = "Premium" # Required for private endpoint
key_vault_sku                    = "standard"
storage_account_tier             = "Standard"
storage_account_replication_type = "LRS"

# AKS Configuration
kubernetes_version    = "1.34"
aks_system_node_size  = "Standard_D2s_v5" # Cost-effective size for dev
aks_system_node_count = 2                 # Minimum HA for system pool
aks_system_node_zones = []                # Disable availability zones for system pool

aks_user_node_pools = {
  "userpool1" = {
    vm_size         = "Standard_D2s_v5"
    node_count      = 1
    min_count       = 1
    max_count       = 3
    os_disk_size_gb = 128
    zones           = [] # Disable availability zones for user pool
    node_labels = {
      "environment" = "dev"
      "nodepool"    = "apps"
    }
  }
}

# Placeholder Active Directory Admin Group (replace with real Azure AD group Object ID)
aks_admin_group_object_ids = ["00000000-0000-0000-0000-000000000000"]

tags = {
  Environment = "dev"
  CostCenter  = "101-IT-DEV"
}
