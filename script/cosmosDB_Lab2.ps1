$rg='az204-blob-rg'
$todayDate =Get-Date -Format "ddMMyyyhhmm"
$cdbName = "cosmos-example$todayDate"
#az group create --location norwayeast --name $rg
az cosmosdb create -n $cdbName -g $rg --locations regionName=norwayeast failoverPriority=0 isZoneRedundant=false
