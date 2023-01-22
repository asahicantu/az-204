$rg='az204-aci-rg'
$todayDate = Get-Date -Format "yyyMMdd"
$dns_name_label="aci-example-$todayDate"
az group create -n $rg --location norwayeast
az container create -g $rg -n mycontainer --image mcr.microsoft.com/azuredocs/aci-helloworld --ports 80 --dns-name-label $dns_name_label --location norwayeast --restart-policy OnFailure --environment-variables KeyTest=ValueTest
az container create -g $rg --file secureValues.yaml
az container show -g $rg -n mycontainer --query "{FQDN:ipAddress.fqdn,ProvisioningState:provisioningState}" -o table
#az group delete -y --no-wait -n $rg