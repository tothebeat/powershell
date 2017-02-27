Param($MAILBOXALIAS, $REQUESTEDUSER)
Add-365RecipientPermission $MAILBOXALIAS -trustee "$REQUESTEDUSER" -AccessRights SendAs
Get-365Mailbox "$MAILBOXALIAS" | Add-365MailboxPermission -User "ADS\$REQUESTEDUSER" -AccessRights 'FullAccess' -automapping:$false