az container create `
    --resource-group $ACI_PERS_RESOURCE_GROUP `
    --name hellofiles `
    --image mcr.microsoft.com/azuredocs/aci-hellofiles `
    --dns-name-label aci-demo `
    --ports 80 `
    --azure-file-volume-account-name $ACI_PERS_STORAGE_ACCOUNT_NAME `
    --azure-file-volume-account-key $STORAGE_KEY `
    --azure-file-volume-share-name $ACI_PERS_SHARE_NAME `
    --azure-file-volume-mount-path /aci/logs/