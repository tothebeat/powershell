Param($MAILBOXALIAS, $REQUESTEDUSER)
get-user -identity "$MAILBOXALIAS" | Remove-ADPermission -User "ADS\$REQUESTEDUSER" -ExtendedRights Send-As
Get-365Mailbox "$MAILBOXALIAS" | Remove-365MailboxPermission -User "ADS\$REQUESTEDUSER" -AccessRights 'FullAccess'
