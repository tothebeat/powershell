To get the calendar perms for a resource mailbox, assuming the default/built-in calendar (if users have created additional calendars, this isn't looking at those, it's only checking the default/built-in one):
 
`Get-MailboxFolderPermission rs-ksm-mcpcal:\calendar | ft -auto`

Let's say I wanted to give myself AvailabilityOnly access rights. It would be accomplished with this command:

`Add-MailboxFolderPermission -Identity rs-ksm-mcpcal:\calendar -User nrb651 -AccessRights AvailabilityOnly`

To remove someone's access to the calendar, you'd do:

`Remove-MailboxFolderPermission -Identity rs-ksm-mcpcal:\calendar -User nrb651`

# References:

* Get-MailboxFolderPermission: https://technet.microsoft.com/en-us/library/dd335061(v=exchg.150).aspx
* Add-MailboxFolderPermission (with different AccessRights): https://technet.microsoft.com/EN-US/library/73f4e8e8-1673-4f58-8353-2f7a597a0a23(EXCHG.150).aspx
* Remove-MailboxFolderPermission: https://technet.microsoft.com/en-us/library/dd351181(v=exchg.150).aspx
