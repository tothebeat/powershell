Param($MAILBOXALIAS)
Set-Mailbox $MAILBOXALIAS -HiddenFromAddressListsEnabled $true
