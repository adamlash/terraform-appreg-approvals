provider "azurerm" {
  version = "=1.44.0"
}

resource "azuread_application" "test" {
  name                       = "terraform-autoapprove-front"
  homepage                   = "https://myhomepage.qill.in"
  reply_urls                 = ["https://myreplyurl.qill.in"]
  available_to_other_tenants = false
  oauth2_allow_implicit_flow = false
  required_resource_access {
    resource_access {
      id = "zzzzzzzz-zzzz-zzzz-zzzz-zzzzzzzzzzzz"
      type = "Scope"
    }
    resource_access {
      id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
      type = "Scope"
    }    
    resource_app_id = "yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy"
  }
  provisioner "local-exec" {
  command = "az ad app permission admin-consent --id ${azuread_application.test.application_id}"
  }
}

