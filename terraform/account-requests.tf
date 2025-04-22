module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "terakou+aft-test@amazon.com"
    AccountName               = "AFT-Test"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "terakou+aft-test@amazon.com"
    SSOUserFirstName          = "terakou"
    SSOUserLastName           = "aft-test"
  }

  account_tags = {
    "ABC:Owner"       = "terakou+aft-test@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}
