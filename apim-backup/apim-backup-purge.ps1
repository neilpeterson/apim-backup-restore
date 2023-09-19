Connect-AzAccount -SubscriptionId '7d87d11e-2aaa-4d69-85bf-a1c11503f96d' -Identity

$apiManagementName = Get-AutomationVariable -Name "apiManagementName"
$apiManagementResourceGroup = Get-AutomationVariable -Name "apiManagementResourceGroup"
$storageAccountName = Get-AutomationVariable -Name "storageAccountName"
$containerName = Get-AutomationVariable -Name "containerName"
$blobName = Get-AutomationVariable -Name "blobName"