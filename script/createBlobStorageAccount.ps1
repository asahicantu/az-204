$rg='az204-blob-rg'
$san='mystore203122141'
az group create --location norwayeast --name $rg
az storage account create -g $rg --name $san --location norwayeast --kind BlockBlobStorage  --sku Premium_LR
az group delete -n $rg --no-wait
