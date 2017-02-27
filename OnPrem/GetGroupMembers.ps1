Param($GROUPNAME)
Get-ADGroupMember -identity "$GROUPNAME" -Recursive | foreach{ get-aduser $_} | select SamAccountName, GivenName, Surname, ObjectClass
