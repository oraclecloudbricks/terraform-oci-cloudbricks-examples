# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# main.tf
#
# Purpose: Defines all the components related to environment


module "dataguard01" {
  source = "git::ssh://git@github.com/oracle-devrel/terraform-oci-cloudbricks-dbcs-dataguard.git?ref=v1.0.0"
  ######################################## PROVIDER SPECIFIC VARIABLES ######################################
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  ########## PROVIDER SPECIFIC VARIABLES ##########


  ########## ARTIFACT SPECIFIC VARIABLES ##########
  dg_availability_domain_number = var.dataguard01_dg_availability_domain_number
  network_subnet_name           = var.dataguard01_network_subnet_name
  primary_db_home_display_name  = var.dataguard01_primary_db_home_display_name
  primary_database_name         = var.dataguard01_primary_database_name
  database_admin_password       = var.dataguard01_database_admin_password
  dg_hostname                   = var.dataguard01_dg_hostname
  dg_shape                      = var.dataguard01_dg_shape
  dg_display_name               = var.dataguard01_dg_display_name
  dg_instance_compartment_name  = var.dataguard01_dg_instance_compartment_name
  dg_network_compartment_name   = var.dataguard01_dg_network_compartment_name
  protection_mode               = var.dataguard01_protection_mode
  transport_type                = var.dataguard01_transport_type

  ######################################## ARTIFACT SPECIFIC VARIABLES ######################################
}
