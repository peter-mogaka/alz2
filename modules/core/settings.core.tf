# Configure the custom landing zones to deploy in
# addition to the core resource hierarchy
locals {
  archetype_config_overrides = {
    root = {
      access_control = {}
      archetype_id   = "es_root"
      parameters = {
        Deploy-MDFC-Config = {
          emailSecurityContact                        = "this_user@replace.me"
          ascExportResourceGroupLocation              = "northeurope"
          ascExportResourceGroupName                  = "mojico-asc-export"
          enableAscForApis                            = "Disabled"
          enableAscForAppServices                     = "Disabled"
          enableAscForArm                             = "Disabled"
          enableAscForContainers                      = "Disabled"
          enableAscForCosmosDbs                       = "Disabled"
          enableAscForCspm                            = "Disabled"
          enableAscForDns                             = "Disabled"
          enableAscForKeyVault                        = "Disabled"
          enableAscForOssDb                           = "Disabled"
          enableAscForServers                         = "Disabled"
          enableAscForServersVulnerabilityAssessments = "Disabled"
          enableAscForSql                             = "Disabled"
          enableAscForSqlOnVm                         = "Disabled"
          enableAscForStorage                         = "Disabled"
          logAnalytics                                = "/subscriptions/c0e0caf9-4b45-4087-bb2e-d7830c8e13c0/resourceGroups/mojico-mgmt/providers/Microsoft.OperationalInsights/workspaces/mojico-la"
          vulnerabilityAssessmentProvider             = "default"
        }
      }
    }
  }
}


/*
  custom_landing_zones
    "${var.root_id}-online-example-1" = {
      display_name               = "${upper(var.root_id)} Online Example 1"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "customer_online"
        parameters     = {}
        access_control = {}
      }
    }
    "${var.root_id}-online-example-2" = {
      display_name               = "${upper(var.root_id)} Online Example 2"
      parent_management_group_id = "${var.root_id}-landing-zones"
      subscription_ids           = []
      archetype_config = {
        archetype_id = "customer_online"
        parameters = {
          Deny-Resource-Locations = {
            listOfAllowedLocations = [
              var.primary_location,
              var.secondary_location,
            ]
          }
          Deny-RSG-Locations = {
            listOfAllowedLocations = [
              var.primary_location,
              var.secondary_location,
            ]
          }
        }
        access_control = {}
      }
    }
  }*/
