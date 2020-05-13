
# Location to spin up your env use "az account list-locations  -o table"
variable location {
}

# Resource group check them out like az group list
variable resource_group {
}

# Prefix to add to your services
variable "prefix" {
  description = "This prefix will be included in the name of most resources."
}

variable "specs" {
  # must select a region that supports availability zones
  # https://docs.microsoft.com/en-us/azure/availability-zones/az-overview
  default = {
    westus2 = {
      region      = "westus2"
      azs         = ["1"]
      environment = "westus2_BIG-IP"
      cidr        = "10.0.0.0/8"
      version     = " "
      owner       = "Remo Mattei"
    }
    westus = {
      region      = "westus"
      azs         = ["1"]
      environment = "westus_BIG-IP"
      cidr        = "10.0.0.0/8"
      owner       = "Remo Mattei"
      #azs                = ["1","3"]
    }
    default = {
      region      = "westus2"
      azs         = ["1"]
      environment = "default - BIG-IP"
      cidr        = "10.0.0.0/8"
      owner       = "Remo Mattei"
    }
  }
}

variable "specs_name" {
  default     = "default"
  description = "name of the map within specification to use for the build"
}

#Network CIDR
variable "network_cidr" {
}
#Network Name
variable "network_name" {
  description = "Network Name for the desire env"
}
#PublicIP Name
variable "public_ip_name" {
}
variable "subnet_name" {
}

#Subnet you want to use
variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
}

#Nic Name
variable "nic_name" {
}
#Nic Config Name
variable "nic_config_name" {
}
#name of the disk
variable "os-disk" {
}
#number of VMs
variable "number_of_vm" {
  description = "Do not add quote on this value"
}

# Storage Tier level use "az storage account list -o table |grep westus2" to just show westus2
# more info https://docs.microsoft.com/en-us/azure/storage/common/storage-account-overview
variable "tier_level" {
}

variable "replication_type" {
}

variable "env_tag" {
}

variable "vm_name" {
}

# VM size use the following "az disk list -o table" to see what size you want
variable "vm_size" {
}
# Storage type
variable "account_type" {
}

# AZ will need a diff user than admin
variable "user_name" {
}
#
#public key
variable "public_key" {
}

variable "caching" {
}

# the next few options can be found using the following "az vm image list --output table"
variable "os_publisher" {
}
variable "offer" {
}

variable "sku_id" {
}

variable "version_to_use" {
}
#computer name
variable "comp_name" {
}

#To disable Password for your VM
variable "password_disable" {
}
