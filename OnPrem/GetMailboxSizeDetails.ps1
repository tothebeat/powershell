# Reference: https://technet.microsoft.com/en-us/library/aa996762(v=exchg.160).aspx
Param($ALIAS)
Get-MailboxFolderStatistics -Identity $ALIAS | Select-Object FolderPath, ItemsInFolder, FolderSize, FolderType | Sort-Object -Property ItemsInFolder -Descending
