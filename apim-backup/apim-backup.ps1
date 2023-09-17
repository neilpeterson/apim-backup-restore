Connect-AzAccount -SubscriptionId '7d87d11e-2aaa-4d69-85bf-a1c11503f96d' -Identity

$apiManagementName = Get-AutomationVariable -Name "apiManagementName"
$apiManagementResourceGroup = Get-AutomationVariable -Name "apiManagementResourceGroup"
$storageAccountName = Get-AutomationVariable -Name "storageAccountName"
# $storageResourceGroup = Get-AutomationVariable -Name "storageResourceGroup"
$containerName = Get-AutomationVariable -Name "containerName"
$blobName = Get-AutomationVariable -Name "blobName"
# $backupName = 'test-backup'
$msiClientId = Get-AutomationVariable -Name "msiClientId"

$storageContext = New-AzStorageContext -StorageAccountName $storageAccountName

Backup-AzApiManagement -ResourceGroupName $apiManagementResourceGroup -Name $apiManagementName -StorageContext $storageContext `
 -TargetContainerName $containerName -TargetBlobName $blobName -AccessType "UserAssignedManagedIdentity" -IdentityClientId $msiClientId -PassThru