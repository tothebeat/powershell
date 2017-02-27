Param($DLALIAS, $MANAGERNETID)
$newmanager = get-user $MANAGERNETID
$group = Get-DistributionGroup $DLALIAS
$managers = $group.ManagedBy
$newmanagers = $managers + $newmanager
Set-DistributionGroup -BypassSecurityGroupManagerCheck -ManagedBy $newmanagers -Identity $DLALIAS
