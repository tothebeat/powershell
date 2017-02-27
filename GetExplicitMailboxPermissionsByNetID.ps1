param ($user = $(throw "Usage: GetExplicitMailboxPermissionsByNetID.ps1 {NetID}"))
Get-MailboxPermission org-ksm-* -resultsize unlimited | Where-Object {$_.user -like "*$user"} | fl -property *
