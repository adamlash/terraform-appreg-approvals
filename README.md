# terraform-appreg-approvals
Automatic Approval of App Registration Permissions with Terraform


# local-exec
```
  provisioner "local-exec" {
  command = "az ad app permission admin-consent --id ${azuread_application.test.application_id}"
  }
```

Basically using the local-exec here as part of the block to auto-approve the registation.
