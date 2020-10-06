# terraform-appreg-approvals
Automatic Approval of App Registration Permissions with Terraform


# local-exec
```
  provisioner "local-exec" {
  command = "az ad app permission admin-consent --id ${azuread_application.test.application_id}"
  }
```

Basically using the local-exec here as part of the block to auto-approve the registation. To run az ad app permission though the Service Principal needs to have access to approve registrations (see https://winsmarts.com/how-to-grant-admin-consent-to-an-api-programmatically-e32f4a100e9d for more info).