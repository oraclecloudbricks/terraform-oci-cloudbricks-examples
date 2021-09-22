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
  dataguard01_dg_availability_domain_number = 1
  dataguard01_network_subnet_name           = "dalquint_hub_pvt_subnet"
  dataguard01_primary_db_home_display_name  = "TstDBHome"
  dataguard01_primary_database_name         = "TstDBHome"
  dataguard01_database_admin_password       = "W3lC0m3_1#"
  dataguard01_dg_hostname                   = "testdbhost-dg"
  dataguard01_dg_shape                      = "VM.Standard2.2"
  dataguard01_dg_display_name               = "TstDBSys-secondary"
  dataguard01_dg_instance_compartment_name  = "DALQUINT_HUB"
  dataguard01_dg_network_compartment_name   = "DALQUINT_HUB"
  dataguard01_protection_mode               = "MAXIMUM_PERFORMANCE"
  dataguard01_transport_type                = "ASYNC"

  ########## ARTIFACT SPECIFIC VARIABLES ##########