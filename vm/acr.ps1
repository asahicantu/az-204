$rg='az204-vm-rg'
$todayDate = Get-Date -Format "yyyMMdd"
$cr="acr$todayDate"
#az login
#az group create -g $rg --location norwayeast
#az acr create -g $rg -n $cr --sku Basic
az acr build --image sample/hello-world:v1 --registry $cr --file Dockerfile  .
az acr repository list --name $cr -o table
az acr repository show-tags --name $cr --repository sample/hello-world -o table
az acr run --registry $cr --cmd '$Registry/sample/hello-world:v1' /dev/null
az group delete -y --no-wait -n $rg