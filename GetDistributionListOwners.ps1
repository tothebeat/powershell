Param($DL_ALIAS)
Get-DistributionGroup -Identity $DL_ALIAS | Format-List ManagedBy
