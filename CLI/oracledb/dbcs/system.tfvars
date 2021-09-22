# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# system.tfvars
#
# Purpose: The following script defines the system particular variables to provision environment

########## PROVIDER SPECIFIC VARIABLES ##########
region           = "sa-santiago-1"
tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaaoqdygmiidrabhv3y4hkr3rb3z6dpmgotvq2scffra6jt7rubresa"
user_ocid        = "ocid1.user.oc1..aaaaaaaafl42rhkw624h4os6n2ulcfxjjn2ylqsanhgtcph7j7owirzj6gya"
fingerprint      = "9a:9e:13:cf:94:6e:2c:b9:54:d2:60:0d:e4:14:8b:5e"
private_key_path = "/home/opc/my_keys/oci_api_key.pem"
########## PROVIDER SPECIFIC VARIABLES ##########

########## ARTIFACT SPECIFIC VARIABLES ##########
dbcs01_ssh_public_key                  = "/home/opc/.ssh/OCI_KEYS/SSH/auto_ssh_id_rsa.pub"
dbcs01_ssh_private_key                 = "/home/opc/.ssh/OCI_KEYS/SSH/auto_ssh_id_rsa"
dbcs01_ssh_public_is_path              = true
dbcs01_ssh_private_is_path             = true
dbcs01_fault_domains                   = ["FAULT-DOMAIN-1", "FAULT-DOMAIN-2"]
dbcs01_dbcs_availability_domain_number = 1
dbcs01_dbcs_instance_compartment_name  = "DALQUINT_HUB"
dbcs01_dbcs_network_compartment_name   = "DALQUINT_HUB"
dbcs01_network_subnet_name             = "dalquint_hub_pvt_subnet"
dbcs01_vcn_display_name                = "DALQUINT_HUB_VCN"
dbcs01_cluster_name                    = "dbcluster"
dbcs01_db_admin_password               = "W3lC0m3_1#"
dbcs01_db_name                         = "TstDBSys"
dbcs01_db_display_name                 = "TstDBHome"
dbcs01_db_home_display_name            = "TstDBHome"
dbcs01_character_set                   = "AL32UTF8"
dbcs01_n_character_set                 = "AL16UTF16"
dbcs01_db_workload                     = "OLTP"
dbcs01_db_version                      = "19.11.0.0"
dbcs01_pdb_name                        = "pdb"
dbcs01_db_disk_redundancy              = "HIGH"
dbcs01_db_system_shape                 = "VM.Standard2.2"
dbcs01_hostname                        = "testdbhost"
dbcs01_data_storage_size_in_gb         = "2048"
dbcs01_license_model                   = "BRING_YOUR_OWN_LICENSE"
dbcs01_node_count                      = "2"
dbcs01_dbcs_nsg_name                   = "WFH_NSG"
dbcs01_db_edition                      = "ENTERPRISE_EDITION_EXTREME_PERFORMANCE"
dbcs01_time_zone                       = "America/Los_Angeles"
dbcs01_auto_backup_enabled             = true
dbcs01_recovery_window_in_days         = 7
dbcs01_auto_backup_window_utc          = "08:00AM-10:00AM_UTC"
########## ARTIFACT SPECIFIC VARIABLES ##########