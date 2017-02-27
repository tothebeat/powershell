param ($MAILBOXALIAS = $(throw "Usage: GetSAFAListForMailbox.ps1 {MailboxAlias}"))
Get-User -identity $MAILBOXALIAS | Get-ADPermission | Where-Object {($_.ExtendedRights -like "*send-as*") -and -not ($_.User -like "nt authority\self")} | Format-Table Identity, User -auto
Get-Mailbox $MAILBOXALIAS | Get-MailboxPermission | Where-Object {($_.AccessRights -match "FullAccess") -and -not ($_.User -like "NT AUTHORITY\SELF")} | Format-Table Identity, User
