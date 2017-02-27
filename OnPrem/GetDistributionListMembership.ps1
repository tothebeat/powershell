Param($DL_ALIAS)
Get-DistributionGroupMember $DL_ALIAS | sort -Property DisplayName | Select DisplayName, Alias, PrimarySmtpAddress, Department
