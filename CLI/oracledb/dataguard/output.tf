# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# output.tf
#
# Purpose: The following script defines the output for system created

output "dataguard" {
  description = "Dataguard Instance"
  value       = module.dataguard01.dataguard_instance
  sensitive   = true
}
