$User = "[email]"
$PWord = ConvertTo-SecureString -String "[password]" -AsPlainText -Force
$tenant = "[tenant-id]"
$subscription = "[subscription-id]"
$Credential = New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $User,$PWord
Connect-AzAccount -Credential $Credential -Tenant $tenant -Subscription $subscription

$RGName = "[resource-group-name]"
$RName = "[app-service-plan-name]"

# Free
Set-AzAppServicePlan -ResourceGroupName $RGName -Name $RName -Tier Free -NumberofWorkers 1 -WorkerSize "Small"

# B1
# Set-AzAppServicePlan -ResourceGroupName $RGName -Name $RName -Tier Basic -NumberofWorkers 1 -WorkerSize "Small"