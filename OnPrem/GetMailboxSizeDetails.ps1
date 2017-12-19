Param($ALIAS)
Get-MailboxFolderStatistics -Identity $ALIAS | Select-Object FolderPath, ItemsInFolder, FolderSize, FolderType | Sort-Object -Property ItemsInFolder -Descending
