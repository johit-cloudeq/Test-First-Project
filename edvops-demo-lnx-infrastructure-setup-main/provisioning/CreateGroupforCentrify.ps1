param($vm_name,$is_new,$ad_groups,$identity_name,$member_of_group_names,$group_owner,$security_group_name,$users,$ou)

if ($is_new -eq "false") {
    $group_name_list = $ad_groups.Split(',')

    Foreach ( $group_name IN $group_name_list)
    {
        Add-Adgroupmember -Identity "$group_name" -Members $vm_name
    }

    $member_of_group_name_list = $member_of_group_names.Split(',')
    Add-ADPrincipalGroupMembership -Identity "$identity_name" -MemberOf "$member_of_group_name_list"
}
else {
    
    New-ADGroup -Name "$security_group_name" -GroupCategory Security -GroupScope Global -path $ou -ManagedBy $group_owner;

    $groupOU = Get-ADOrganizationalUnit -Filter * -SearchBase $ou -SearchScope 2
    write-host $groupOU
    $usersList = $users.Split(',')
    foreach ($user in $usersList) {
        Add-ADGroupMember -Identity "$security_group_name" -Members $user;
    }
}