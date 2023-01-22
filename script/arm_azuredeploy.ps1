$rg='az204-arm-rg'
$todayDate = Get-Date -Format "yyyMMddhhmm"
$san='az204storageacctarm20230122'
#az login
az group create -g $rg --location norwayeast
az deployment group create -g $rg --template-file ../arm/azuredeploy.json --parameters  ../arm/azuredeploy.parameters.json
az storage account show -g $rg -n  $san
az group delete -n $rg -y --no-wait 