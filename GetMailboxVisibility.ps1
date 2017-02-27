Param($MAILBOXALIAS)
Get-Mailbox $MAILBOXALIAS | Format-List hidden*
