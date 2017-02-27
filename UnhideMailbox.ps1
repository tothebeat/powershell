Param($MAILBOXALIAS)
Set-Mailbox $MAILBOXALIAS -HiddenFromAddressListsEnabled $false
