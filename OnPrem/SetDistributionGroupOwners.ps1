Param($DL_ALIAS, $OWNERS)
Set-DistributionGroup -Identity $DL_ALIAS -ManagedBy $OWNERS -BypassSecurityGroupManagerCheck
