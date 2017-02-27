Param($DLALIAS, $CSVFILENAME)
Import-CSV "$CSVFILENAME" | ForEach {Add-DistributionGroupMember -Identity "$DLALIAS" -Member $_.Name}
