# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# system.tfvars
#
# Purpose: The following script defines the system particular variables to provision environment


######################################## PROVIDER SPECIFIC VARIABLES ######################################
region           = "uk-london-1"
tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaaoqdygmiidrabhv3y4hkr3rb3z6dpmgotvq2scffra6jt7rubresa"
user_ocid        = "ocid1.user.oc1..aaaaaaaaxc4jvxrvoyffcxoeeq4yzugcsalqhbh2yitkac2yu2jmg7vppera"
fingerprint      = "ea:56:d4:d8:36:58:a8:1c:8f:a1:3a:59:68:82:f6:f8"
private_key_path = "/home/opc/.ssh/id_rsa"
######################################## PROVIDER SPECIFIC VARIABLES ######################################

######################################## COMPUTE01 SPECIFIC VARIABLES ######################################
compute01_ssh_public_key                   = "./ssh_keys/auto_ssh_id_rsa.pub"
compute01_ssh_private_key                  = "./ssh_keys/auto_ssh_id_rsa"
compute01_ssh_public_is_path               = true
compute01_ssh_private_is_path              = true
compute01_compute_availability_domain_list = ["oDQF:uk-london-1-AD-1", "oDQF:uk-london-1-AD-2", "oDQF:uk-london-1-AD-3"]

compute01_network_subnet_name                     = "cloudbricks-public-subnet"
compute01_assign_public_ip_flag                   = true
compute01_fault_domain_name                       = ["FAULT-DOMAIN-1", "FAULT-DOMAIN-2", "FAULT-DOMAIN-3"]
compute01_bkp_policy_boot_volume                  = "gold"
compute01_linux_compute_instance_compartment_name = "CloudBricks_Artifacts"
compute01_linux_compute_network_compartment_name  = "CloudBricks"
compute01_vcn_display_name                        = "cloudbricks-vcn"
compute01_num_instances                           = 4
compute01_is_nsg_required                         = true
compute01_compute_nsg_name                        = "NSG_PUBLIC_ACCESS"
compute01_compute_display_name_base               = "felnxmachine"
compute01_instance_image_ocid                     = "ocid1.image.oc1.uk-london-1.aaaaaaaahbeggsuyplosadiuzd2rzj2btsqapkuyb35kvnoiwhohk3tgz4wq" #Image: Oracle-Autonomous-Linux-7.9-2021.07-0
compute01_instance_shape                          = "VM.Standard2.1"
######################################## COMPUTE01 SPECIFIC VARIABLES ######################################

######################################## BACKENDSET01 SPECIFIC VARIABLES ######################################
backendset01_lbaas_bes_single_instance_compartment_name = "CloudBricks_Artifacts"
backendset01_lbaas_bes_single_network_compartment_name  = "CloudBricks"
backendset01_network_subnet_name                        = "cloudbricks-public-subnet"
backendset01_vcn_display_name                           = "cloudbricks-vcn"
backendset01_is_app_bes                                 = true
backendset01_backend_set_name                           = "feunitarybessingle"
backendset01_lbaas_policy                               = "ROUND_ROBIN"
backendset01_checkport                                  = "80"
backendset01_check_protocol                             = "TCP"
backendset01_session_persistance_cookie_name            = "COOKIE"
backendset01_listener_name                              = "feunitarylistener"
backendset01_listen_port                                = "80"
backendset01_listen_protocol                            = "HTTP"
backendset01_backend_port                               = "80"
######################################## BACKENDSET01 SPECIFIC VARIABLES ######################################

######################################## LOADBALANCER01 SPECIFIC VARIABLES ######################################
loadbalancer01_lbaas_instance_compartment_name = "CloudBricks_Artifacts"
loadbalancer01_lbaas_network_compartment_name  = "CloudBricks"
loadbalancer01_network_subnet_name             = "cloudbricks-public-subnet"
loadbalancer01_vcn_display_name                = "cloudbricks-vcn"
loadbalancer01_lbaas_display_name              = "feunitarylbaas"
loadbalancer01_lbaas_shape                     = "flexible"
loadbalancer01_lbaas_shape_min_bw_mbps         = "100"
loadbalancer01_lbaas_shape_max_bw_mbps         = "100"
loadbalancer01_lb_nsg_name                     = "NSG_Public_Access"
loadbalancer01_is_app_lbaas                    = true
loadbalancer01_is_private                      = false
######################################## LOADBALANCER01 SPECIFIC VARIABLES ######################################
