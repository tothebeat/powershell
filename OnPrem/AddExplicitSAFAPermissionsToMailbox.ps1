Param($MAILBOXALIAS, $REQUESTEDUSER)
get-user -identity "$MAILBOXALIAS" | Add-ADPermission -User "ADS\$REQUESTEDUSER" -ExtendedRights Send-As -DomainController evcspdc3
Get-Mailbox "$MAILBOXALIAS" | Add-MailboxPermission -User "ADS\$REQUESTEDUSER" -AccessRights 'FullAccess' -DomainController evcspdc3 -automapping:$false
