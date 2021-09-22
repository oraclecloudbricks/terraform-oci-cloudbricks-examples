# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# output.tf
#
# Purpose: The following script defines the output for system created

output "dbcs" {
  description = "Compute Instances"
  value       = module.dbcs01.dbcs_db_system
  sensitive   = true
}
