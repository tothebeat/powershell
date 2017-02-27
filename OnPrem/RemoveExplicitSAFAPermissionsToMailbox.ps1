Param($MAILBOXALIAS, $REQUESTEDUSER)
get-user -identity "$MAILBOXALIAS" | Remove-ADPermission -User "ADS\$REQUESTEDUSER" -ExtendedRights Send-As
Get-Mailbox "$MAILBOXALIAS" | Remove-MailboxPermission -User "ADS\$REQUESTEDUSER" -AccessRights 'FullAccess'
