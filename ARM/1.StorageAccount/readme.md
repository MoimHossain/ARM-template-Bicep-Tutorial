

```
az group create --name demo-resources --location westeurope --tags Purpose=Demo Production=NO --managed-by "moim.hossain@microsoft.com"
```


```
az deployment group create --resource-group demo-resources --template-file ./arm.json --parameters ./param.json
```