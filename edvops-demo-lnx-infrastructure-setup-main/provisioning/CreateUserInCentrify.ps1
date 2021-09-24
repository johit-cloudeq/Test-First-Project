param($zone,$user_email,$AD_User)
$result=$(New-CdmUserProfile -Zone $zone –User $user_email -login $AD_User -UseAutoUid -AutoPrivateGroup –HomeDir "%{home}/%{user}" –Gecos "%{u:displayName}" –Shell "%{shell}")
write-host $result